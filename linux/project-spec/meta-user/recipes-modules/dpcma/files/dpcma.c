#include "dpcma.h"

#include <linux/dma-mapping.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/list.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/of_address.h>
#include <linux/of_platform.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/uaccess.h>

#ifdef CMA_DEBUG
#define my_dev_info dev_info
#else
#define my_dev_info dev_dbg
#endif

struct dpcma_device {
    struct miscdevice sysdev;
    struct device *dmadev;
};

struct dpcma_t {
    struct list_head head;
    struct dpcma_device *dev;
};

struct dpcma_block_t {
    struct list_head head;
    phy_addr_t phy_addr;
    void *virt_addr;
    dma_addr_t dma_addr;
    size_t capacity;
};

static size_t align(size_t a, size_t b) {
    if (a % b == 0) {
        return a;
    }
    return (a / b + 1) * b;
}

static int dpcma_open(struct inode *inode, struct file *file) {
    struct dpcma_t *my_data = kzalloc(sizeof(struct dpcma_t), GFP_KERNEL);
    if (my_data == NULL) {
        goto NOMEM;
    }
    INIT_LIST_HEAD(&my_data->head);
    my_data->dev = container_of(file->private_data, struct dpcma_device, sysdev);
    file->private_data = my_data;

    my_dev_info(my_data->dev->dmadev, "OK file_private_data %p\n",
                file->private_data);
    my_dev_info(my_data->dev->dmadev, "OK mydev %p\n", my_data->dev);
    my_dev_info(my_data->dev->dmadev, "OK mydev.sysdev %p\n",
                &my_data->dev->sysdev);
    my_dev_info(my_data->dev->dmadev, "OK mydev.dmadev %p\n",
                my_data->dev->dmadev);
    return 0;
NOMEM:
    return -ENOMEM;
}

static int dpcma_close(struct inode *inodep, struct file *filp) {
    struct dpcma_t *cma = NULL;
    struct list_head *plist = NULL;
    struct list_head *next = NULL;
    cma = filp->private_data;
    list_for_each_safe(plist, next, &cma->head) {  //
        struct dpcma_block_t *h = list_entry(plist, struct dpcma_block_t, head);
        dma_free_coherent(cma->dev->dmadev, h->capacity, h->virt_addr, h->dma_addr);
        my_dev_info(cma->dev->dmadev,
                    "free leak cma blocks 0x%x 0x%x %p 0x%x\n",  //
                    (int)h->phy_addr,                            //
                    (int)h->dma_addr,                            //
                    h->virt_addr,                                //
                    (int)h->capacity                             //
        );
        list_del(plist);
        kfree(plist);
    }
    kfree(cma);
    return 0;
}

static ssize_t dpcma_write(struct file *file, const char __user *buf,
                           size_t len, loff_t *ppos) {
    return (ssize_t)len;
}

static long show(struct dpcma_t *cma) {
    struct dpcma_block_t *h = NULL;
    my_dev_info(cma->dev->dmadev, "start dump %s\n", cma->dev->sysdev.name);
    list_for_each_entry(h, &cma->head, head) {                      //
        my_dev_info(cma->dev->dmadev, "table 0x%x 0x%x 0x%x %p\n",  //
                    (unsigned int)h->phy_addr,                      //
                    (unsigned int)h->dma_addr,                      //
                    (unsigned int)h->capacity,                      //
                    h->virt_addr                                    //
        );
    }
    return 0;
}

static long cma_alloc(struct dpcma_t *cma, struct dpcma_req_alloc *req) {
    int ret = 0;
    size_t size = 0;
    struct dpcma_block_t *new_data = NULL;
    new_data = kzalloc(sizeof(struct dpcma_block_t), GFP_KERNEL);
    if (new_data == NULL) {
        ret = -ENOMEM;
        goto END1;
    }
    ret = get_user(size, &req->size);
    if (ret != 0) {
        goto END2;
    }
    new_data->capacity = align(size, PAGE_SIZE);
    ret = put_user(new_data->capacity, &req->capacity);
    if (ret != 0) {
        goto END2;
    }
    new_data->virt_addr = dma_alloc_coherent(cma->dev->dmadev, new_data->capacity,
                                             &new_data->dma_addr, GFP_KERNEL);
    if (new_data->virt_addr == NULL) {
        dev_err(cma->dev->dmadev,
                "no enough dma memory: size = 0x%x device=(%d %d)\n",
                (int)new_data->capacity, MAJOR(cma->dev->dmadev->devt),
                MINOR(cma->dev->dmadev->devt));
        goto END2;
    }
    new_data->phy_addr = new_data->dma_addr;
    ret = put_user(new_data->phy_addr, &req->phy_addr);
    if (ret != 0) {
        goto END3;
    }
    list_add(&new_data->head, &cma->head);
    my_dev_info(cma->dev->dmadev, "alloc 0x%x 0x%x\n",
                (unsigned int)new_data->phy_addr, (int)new_data->capacity);
    return ret;
END3:
    dma_free_coherent(cma->dev->dmadev, new_data->capacity, new_data->virt_addr,
                      new_data->dma_addr);
END2:
    kfree(new_data);
END1:
    return ret;
}

static long cma_free(struct dpcma_t *cma, struct dpcma_req_free *req) {
    struct list_head *plist = NULL;
    struct list_head *next = NULL;
    long phy_addr = 0;
    int ret = 0;
    ret = get_user(phy_addr, &req->phy_addr);
    if (ret != 0) {
        goto END1;
    }
    list_for_each_safe(plist, next, &cma->head) {  //
        struct dpcma_block_t *h = list_entry(plist, struct dpcma_block_t, head);
        if (phy_addr == h->phy_addr) {
            dma_free_coherent(cma->dev->dmadev, h->capacity, h->virt_addr,
                              h->dma_addr);
            my_dev_info(cma->dev->dmadev, "free 0x%x 0x%x\n", (unsigned int)phy_addr,
                        (unsigned int)h->capacity);
            list_del(plist);
            kfree(plist);
        }
    }
    return ret;
END1:
    return ret;
}

static long cma_sync(struct dpcma_t *cma, struct dpcma_req_sync *req) {
    struct list_head *plist = NULL;
    long phy_addr = 0;
    int direction = 0;
    size_t size = 0;
    int ret = 0;
    ret = get_user(phy_addr, &req->phy_addr);
    if (ret != 0) {
        goto END1;
    }
    ret = get_user(size, &req->size);
    if (ret != 0) {
        goto END1;
    }
    ret = get_user(direction, &req->direction);
    if (ret != 0) {
        goto END1;
    }
    if (direction != DPCMA_FROM_CPU_TO_DEVICE &&
        direction != DPCMA_FROM_DEVICE_TO_CPU) {
        dev_err(cma->dev->dmadev, "invalid direction. direction = %d\n", direction);
        ret = -EINVAL;
        goto END1;
    }
    list_for_each(plist, &cma->head) {  //
        struct dpcma_block_t *h = list_entry(plist, struct dpcma_block_t, head);
        if (phy_addr >= h->phy_addr &&
            phy_addr < h->phy_addr + h->capacity) {
            size_t offset = phy_addr - h->phy_addr;
            if (direction == DPCMA_FROM_DEVICE_TO_CPU) {
                dma_sync_single_for_cpu(cma->dev->dmadev,  //
                                        h->dma_addr + offset, size, DMA_FROM_DEVICE);
            } else if (direction == DPCMA_FROM_CPU_TO_DEVICE) {
                dma_sync_single_for_device(cma->dev->dmadev,  //
                                           h->dma_addr + offset, size, DMA_TO_DEVICE);
            }
            my_dev_info(
                cma->dev->dmadev,
                "sync req.phy_addr=0x%x dma_addr=0x%x capacity=0x%x size=0x%x "
                "dir=%d\n",        //
                (int)phy_addr,     //
                (int)h->dma_addr,  //
                (int)h->capacity,  //
                (int)size,         //
                (int)direction     //
            );
        }
    }
    return ret;
END1:
    return ret;
}

static long dpcma_ioctl(struct file *file, unsigned int cmd,
                        unsigned long arg) {
    struct dpcma_t *cma = file->private_data;
    switch (cmd) {
        case DPCMA_SHOW: {
            return show(cma);
        };
        case DPCMA_ALLOC: {  //
            return cma_alloc(cma, (struct dpcma_req_alloc *)arg);
        }
        case DPCMA_FREE: {  //
            return cma_free(cma, (struct dpcma_req_free *)arg);
        }
        case DPCMA_SYNC: {  //
            return cma_sync(cma, (struct dpcma_req_sync *)arg);
        }
    }
    dev_err(cma->dev->dmadev, "UNKNOWN CMD %d\n", cmd);
    return -EINVAL;
}

static int dpcma_mmap(struct file *filp, struct vm_area_struct *vma) {
    size_t size = vma->vm_end - vma->vm_start;
    if (remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff, size,
                        vma->vm_page_prot)) {
        return -EAGAIN;
    }
    return 0;
}

static const struct file_operations dpcma_fops = {
    //
    .owner = THIS_MODULE,           //
    .open = dpcma_open,             //
    .release = dpcma_close,         //
    .write = dpcma_write,           //
    .unlocked_ioctl = dpcma_ioctl,  //
    .mmap = dpcma_mmap,             //
    .llseek = no_llseek};

/*{  //
.minor = MISC_DYNAMIC_MINOR,           //
.name = "dpcma",                       //
.fops = &dpcma_fops,                   //
};*/

static int my_probe(struct platform_device *pdev) {
    int ret = 0;
    struct dpcma_device *my_dev;
    if (!pdev->dev.dma_mask) {
        pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;
    }
    ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));

    if (!dma_supported(&pdev->dev, *pdev->dev.dma_mask)) {
        dev_err(&pdev->dev, "DMA is not supported\n");
        return -ENODEV;
    }
    /* alloc a dev mode */
    my_dev = kzalloc(sizeof(struct dpcma_device), GFP_KERNEL);
    if (my_dev == NULL) {
        ret = -ENOMEM;
        goto END1;
    }
    my_dev->sysdev.minor = MISC_DYNAMIC_MINOR;
    my_dev->sysdev.name = "dpcma";
    my_dev->sysdev.fops = &dpcma_fops;
    my_dev->dmadev = &pdev->dev;
    platform_set_drvdata(pdev, my_dev);
    ret = misc_register(&my_dev->sysdev);
    return ret;

END1:
    kfree(my_dev);
    return ret;
}

static int my_remove(struct platform_device *pdev) {
    struct dpcma_device *my_dev = NULL;
    int ret = 0;
    my_dev = platform_get_drvdata(pdev);
    misc_deregister(&my_dev->sysdev);
    kfree(my_dev);
    return ret;
}

static struct of_device_id dpcma_dt_ids[] = {{.compatible = "deephi,cma"},
                                             {/* end of table */}};

MODULE_DEVICE_TABLE(of, dpcma_dt_ids);

static struct platform_driver dpcma_driver = {
    .probe = my_probe,
    .remove = my_remove,
    .driver =
        {
            .name = "dpcma",
            .of_match_table = dpcma_dt_ids,
        },
};

module_platform_driver(dpcma_driver)

    MODULE_DESCRIPTION("expose CMA interfaces");
MODULE_AUTHOR("Wang Chunye <chunywan@xilinx.com>");
MODULE_LICENSE("GPL");

/* Local Variables: */
/* mode:c */
/* c-basic-offset: 2 */
/* coding: utf-8-unix */
/* End: */
