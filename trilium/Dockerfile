FROM alpine:latest as builder
RUN apk --no-cache add curl
RUN apk --no-cache add unzip
RUN curl https://github.com/zadam/trilium/archive/v0.45.8.zip  > /tmp/trilium.zip
RUN unzip /tmp/trilium.zip

FROM node:14.15.4
COPY --from=builder /tmp/trilium /root/trilium
WORKDIR /root/trilium
RUN npm install