Challenge-2 is in other branch

# Annam-AI-Assignment-Challenge-1

Three distinct neural network architectures were experimented with to benchmark classification performance:
## ResNet (Residual Network)
 A ResNet-based architecture was used for its ability to train deeper models without vanishing gradients. It leverages skip connections to pass information across layers, making it highly effective for image classification tasks.


## DenseNet (Densely Connected Network)
 DenseNet connects each layer to every other layer in a feed-forward fashion, promoting feature reuse and improving gradient flow. This architecture has shown superior performance in many image classification tasks.


## Vision Transformer (ViT)
 The Vision Transformer divides an image into patches and processes them through self-attention layers, offering a novel alternative to convolution-based architectures. ViT excels in capturing long-range dependencies and global context.


Each model was fine-tuned on the soil dataset using pre-trained weights (e.g., from ImageNet), ensuring faster convergence and better generalization.

## Training Setup
Loss Function: Cross-Entropy Loss was used to handle multi-class classification.

Optimizer: Adam with a learning rate of 1e-5 .

Validation Strategy: A portion of the training data was used for validation to monitor overfitting and tune hyperparameters.


