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

## Quick start of Terraform Docker and Nginx

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

## Update AWS CLI locally

- curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
  sudo installer -pkg AWSCLIV2.pkg -target /
- aws --version

---

## Spinnig up EC2 instance using terraform

- playing-terraform/ec2-instance.tf
- terraform init
- terraform plan
- Error:
  - Error: Invalid function argument, 11: public_key = file("~/.ssh/id_rsa.pub") # Path to your public key
  - ssh-keygen -t rsa -C "tsabunkar@gmail.com" -f ~/.ssh/id_rsa -P ""
- terraform apply
- terraform destory

# Terraform Commands

- Terraform Init Command (initialize the terraform locally)
  - \$ terraform init -backend-config="backend-config-file-path"
- Terraform Plan Command (makes a deployment plan for resources)
  - \$ terraform plan -var-file="var-file-path" -var="key=value"
- Terraform Apply Command (Deploy the resources)
  - \$ terraform apply -var-file="var-file-path" -var="key=value"
- Terraform Destory Command (Destory the resources`)
  - \$ terraform destory -var-file="var-file-path" -var="key=value"
