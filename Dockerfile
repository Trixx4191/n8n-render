FROM n8nio/n8n:latest
FROM n8nio/n8n

# Install yt-dlp and dependencies
USER root
RUN apt-get update && apt-get install -y curl ffmpeg python3-pip && \
    pip install yt-dlp && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER node

