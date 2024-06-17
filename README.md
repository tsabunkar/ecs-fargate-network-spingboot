# ecs-fargate-network-spingboot

## Installing Terraform

- brew tap hashicorp/tap
- brew install hashicorp/tap/terraform
- brew update
- brew upgrade hashicorp/tap/terraform
- terraform -help
- terraform -help plan
- To install auto-complete
  - terraform -install-autocomplete

## Quick start

- open -a Docker
- mkdir learn-terraform-docker-container
- cd learn-terraform-docker-container
- create the main.tf file with the content
- terraform init
- terraform apply
- Error: Error pinging Docker server: Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
  - https://stackoverflow.com/questions/67989620/error-pinging-docker-server-on-terraform-apply
- Check if nginx is running at - http://localhost:8000/
- terraform destroy
