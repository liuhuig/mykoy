FROM node:slim
WORKDIR /app
COPY . .
EXPOSE 3000
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get update -y && \
    chmod +x index.js && \
    npm install && \
    rm -rf /var/lib/apt/lists/*
CMD ["node", "index.js"]
