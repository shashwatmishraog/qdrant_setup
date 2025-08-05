# Use official Qdrant image
FROM qdrant/qdrant:latest

# Expose ports
EXPOSE 6333 6334

# The entrypoint is already set in the base image
# Custom configurations can be added here if needed