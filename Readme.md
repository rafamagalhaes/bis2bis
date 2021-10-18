# **Desafio Bis2Bis - Um app simples para apresentação de uma pipeline CI/CD**

## Criação do cluster GKE
Criação do cluster GKE é realizada de forma automatizada utilizando o Terraform. Foram usados os arquivos:
- terraform.tfvars: Arquivo de identificação do projeto e definição da region do Google Cloud que será utilizada para o projeto.
- vpc.tf: Arquivo de criação da VPC Network e Subnet.
- gke.tf: Arquivo de criação do cluster GKE.
- Outputs.tf: Arquivo de geração de outputs para acompanhamento do deploy.

### Procedimento de deploy do cluster GKE
- terraform init
- terraform plan
- terraform apply --auto-approve 

## Pipeline Aplicação (Deploy e Atualização)
Jobs de setup, build, publish e Deploy
- Setup: Acesso ao Google Cloud
- Build: Gerar imagem Docker da aplicação
- Publish: Publicar a imagem Docker no Registry
- Deploy: Criação do container da aplicação no cluster GKE

## Monitoramento da Aplicação
O monitoramento da aplicação será realizado através do Google Cloud em Kubernetes Engine / Workloads e clicando no bis2bis-app.
