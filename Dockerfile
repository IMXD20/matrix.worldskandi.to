# Use the official NGINX base image
FROM nginx:latest

WORKDIR /app


COPY nginx.conf /etc/nginx/nginx.conf

COPY . .

RUN chmod +x ./entrypoint.sh && \
    chmod +x ./install.sh && \
    ./install.sh


# Expose port 80 for HTTP traffic
EXPOSE 80
EXPOSE 443
EXPOSE 8443

# Start NGINX when the container launches
CMD ["./entrypoint.sh"]