# Service Deployment

FluxCD Deployment for all services. 

i. FluxCD clones the repository `[https://github.com/malike/k8s-gitops-llm-service/tree/main](https://github.com/malike/k8s-gitops-llm-service/tree/main)`
ii. `[./deployment/common](https://github.com/malike/k8s-gitops-llm-service/tree/main/deployment/common)` applies all changes there first. This creates the namespace
and then automatically add the chart repository
iii. `[./deployment/llm-service](https://github.com/malike/k8s-gitops-llm-service/tree/main/deployment/llm-service)` deploys `llm-service` helm chart
iv. `[./deployment/llm-frontend](https://github.com/malike/k8s-gitops-llm-service/tree/main/deployment/llm-frontend)` deploys `llm-frontend` helm chart