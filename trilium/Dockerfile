FROM alpine:latest as builder
RUN apk --no-cache add git
WORKDIR /tmp/
RUN git clone --branch v0.45.8 --depth 1 https://github.com/zadam/trilium.git

FROM node:14.15.4
COPY --from=builder /tmp/trilium /root/trilium
WORKDIR /root/trilium
RUN npm install --production
ENV TRILIUM_PORT "80"
CMD [ "node", "./src/www" ]
# DEBUG:
# CMD tail -f /dev/null