import tensorflow as tf

#@tf.function(jit_compile=True)
def loss_fcn(labels, preds, weights):
    # @brief Compute network's loss as weighted softmax cross entropy.
    # @param labels Label.
    # @param preds Network's prediction.
    # @param weights Weight matrix.
    # @return Loss.

    loss = tf.nn.softmax_cross_entropy_with_logits(labels, preds, axis=1)
    loss = tf.multiply(weights, loss)
    loss = tf.reduce_sum(loss)
    return loss #tf.multiply(loss, 0.0001)