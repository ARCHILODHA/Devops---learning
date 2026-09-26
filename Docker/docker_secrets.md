# Docker Secrets

## Why Secrets Matter

Applications commonly require:

- Database passwords
- API keys
- Tokens
- Certificates
- Cloud credentials

Secrets should not be hardcoded inside Dockerfiles or source code.

## Docker Compose Example

```yaml
services:
  app:
    image: myapp:latest
    secrets:
      - db_password

secrets:
  db_password:
    file: ./secrets/db_password.txt
Avoid
ENV DB_PASSWORD=mysecretpassword

Do not commit secrets:

.env
secrets/
*.pem
*.key

Add them to .gitignore.

Environment Variables

For development:

docker run \
  -e DB_HOST=localhost \
  -e DB_USER=admin \
  myapp
Best Practices
Never commit secrets to Git.
Use secret-management services for production.
Rotate credentials regularly.
Apply least privilege.
Keep development and production secrets separate.
