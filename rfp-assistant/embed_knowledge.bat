#!/bin/bash

# RFP Assistant - Knowledge Base Embedder Script
# This script embeds documents into a knowledge base for the RFP Assistant

# Define source and output directories with absolute paths
SOURCE_DIR="../Responses"
OUTPUT_DIR="../rfp-data"

# Create knowledge base directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Check for required packages
echo "Checking required packages..."
pip install -q langchain langchain-community langchain-openai faiss-cpu pypdf docx2txt unstructured tiktoken

# Run the embedder
echo "Starting knowledge base embedding process..."
echo "Source directory: $SOURCE_DIR"
echo "Output directory: $OUTPUT_DIR"

# Run the embedder with positional arguments (not flags)
python ./rfp-assistant/utils/knowledge_embedder.py "$SOURCE_DIR" "$OUTPUT_DIR"

echo "Embedding process complete!"
echo "Knowledge base is now ready for use with the RFP Assistant."
