# Multi-stage Docker build for PdfCraft Web
FROM rust:1-bookworm AS builder

# Install trunk and wasm target
RUN rustup target add wasm32-unknown-unknown && \
    cargo install trunk --locked

WORKDIR /app
COPY . .

# Build the WebAssembly release package
RUN cd apps/pdfcraft-web && trunk build --release

# Runtime stage: Nginx
FROM nginx:alpine

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy compiled static web files
COPY --from=builder /app/dist/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

