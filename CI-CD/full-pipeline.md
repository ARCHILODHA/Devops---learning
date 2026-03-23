# Complete CI/CD Pipeline

## Steps
1. Code Push
2. Build
3. Test
4. Docker Build
5. Deploy

## Example Flow
GitHub → Actions → Docker → Kubernetes

## Sample Commands
docker build -t app .
docker push username/app

kubectl apply -f deployment.yaml
