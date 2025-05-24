#!/bin/bash

set -e

# Make sure Kaggle API token is set
if [ ! -f ~/.kaggle/kaggle.json ]; then
  echo "Error: Kaggle API token not found. Please place your kaggle.json in ~/.kaggle/"
  exit 1
fi

mkdir -p ./data/raw

cd ./data/raw

echo "Downloading soil-classification competition data from Kaggle..."
kaggle competitions download -c soil-classification

echo "Unzipping..."
unzip -o soil-classification.zip
rm soil-classification.zip

echo "Download and extraction complete."
