FROM qdrant/qdrant:latest

# Create storage directory inside container
# ⚠️ Data stored inside container - will be lost when container rebuilds
RUN mkdir -p /qdrant/storage
VOLUME ["/qdrant/storage"]

# Create snapshots directory for backups
RUN mkdir -p /qdrant/snapshots

# Set proper permissions
RUN chmod -R 755 /qdrant/storage /qdrant/snapshots

# Expose ports for HTTP and gRPC
EXPOSE 6333 6334

# Set working directory
WORKDIR /qdrant

# The entrypoint is already set in the base image
# Qdrant will start automatically with the environment variables