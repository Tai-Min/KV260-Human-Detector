#pragma once
#ifdef __KERNEL__
#include <linux/types.h>
#else
#include <stdlib.h>
#endif
#define DPCMA_IOCTL_MAGIC 'D'
#define DPCMA_SHOW _IOWR(DPCMA_IOCTL_MAGIC, 4, int)
typedef unsigned long phy_addr_t;
struct dpcma_req_alloc {
  size_t size;
  phy_addr_t phy_addr;
  size_t capacity;
};
#define DPCMA_ALLOC _IOWR(DPCMA_IOCTL_MAGIC, 1, struct dpcma_req_alloc *)
struct dpcma_req_free {
  phy_addr_t phy_addr;
  size_t capacity;
};
#define DPCMA_FREE _IOWR(DPCMA_IOCTL_MAGIC, 2, struct dpcma_req_free *)

#define DPCMA_FROM_CPU_TO_DEVICE (0)
#define DPCMA_FROM_DEVICE_TO_CPU (1)
struct dpcma_req_sync {
  phy_addr_t phy_addr;
  size_t size;
  int direction;
};
#define DPCMA_SYNC _IOWR(DPCMA_IOCTL_MAGIC, 3, struct dpcma_req_sync *)
