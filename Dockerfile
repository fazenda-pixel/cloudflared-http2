ARG BUILD_FROM
FROM ${BUILD_FROM}

# Ensure bashio and s6-overlay environment are available (base image already includes them)
# Install cloudflared
RUN apk add --no-cache cloudflared

# Copy service script into s6 services and ensure it's executable
COPY run.sh /etc/services.d/cloudflared/run
RUN chmod +x /etc/services.d/cloudflared/run

