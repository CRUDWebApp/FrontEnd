BE_URL=$(kubectl get svc crud-app-service -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')

VITE_API_URL="http://$BE_URL/api" pnpm build