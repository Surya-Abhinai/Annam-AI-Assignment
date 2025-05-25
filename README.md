# Annam-AI-Assignment-Challenge-2

## 1. DINOv2 Mean Embedding Similarity
This method leverages the power of self-supervised vision transformers. The DINOv2 model, trained on large-scale image data, was used to extract meaningful feature embeddings from soil images.
Steps:
DINOv2 embeddings were extracted for all training soil images.


The mean of these embeddings was computed, forming a "soil prototype vector".


For each test image, its embedding was compared to the soil prototype using cosine similarity.


A threshold was applied to classify an image as soil or non-soil based on its similarity score.


Rationale:
 Images that are visually similar to the soil class should have high cosine similarity to the prototype. This technique is simple yet effective, especially with limited labeled data.
 
## 2. Autoencoder with Latent Distance Anomaly Detection
An autoencoder was trained exclusively on soil images to learn their reconstruction patterns. Instead of relying solely on pixel-wise reconstruction loss, this approach used latent space consistency as an anomaly score.
Steps:
A convolutional autoencoder was trained to reconstruct soil images.


During inference, a test image was encoded into a latent vector (z), reconstructed, and re-encoded to obtain z_recon.


The Mean Squared Error (MSE) between z and z_recon was computed as the latent anomaly score.


A threshold on this latent error was used to classify images: high error implies the image deviates from learned soil patterns, suggesting a non-soil class.


Rationale:
 The latent space captures higher-level features. A mismatch between original and reconstructed latent vectors indicates that the input image lies outside the learned distribution (i.e., non-soil).
