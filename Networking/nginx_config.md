# Nginx Reverse Proxy

## Example Config
```nginx
server {
    listen 80;

    location / {
        proxy_pass http://localhost:3000;
    }
}
Restart Nginx

sudo systemctl restart nginx
