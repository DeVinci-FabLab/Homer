FROM b4bz/homer:latest

# Set metadata
LABEL org.opencontainers.image.title="DeVinci Fablab Homer Dashboard"
LABEL org.opencontainers.image.description="Custom Homer dashboard for DeVinci Fablab services"
LABEL org.opencontainers.image.vendor="DeVinci Fablab"
LABEL org.opencontainers.image.source="https://github.com/DeVinci-FabLab/Homer"

# Copy custom assets and configuration
COPY --chown=lighttpd:lighttpd assets/ /www/assets/

# Set proper permissions
USER root
RUN chmod -R 755 /www/assets
USER lighttpd

# Expose port
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:8080/ || exit 1