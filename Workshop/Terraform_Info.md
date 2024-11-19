# Terraform: 
- Initialize terraform for this project with:
    ```
    docker compose -f docker-compose.yml run --rm terraform init
    ```
- Now you can start using terraform!
- If you make changes to your configuration, you can review and generate an execution plan:
    ```
    docker compose -f docker-compose.yml run --rm  terraform plan
    ```
- To apply the changes permanently, run:
    ```
    docker compose -f docker-compose.yml run --rm terraform apply
    ```
- If you need to destroy the applied infrastructure, use:
    ```
    docker compose -f docker-compose.yml run --rm  terraform destroy
    ```
# Coding
Here you can find Code snippets in order to configurate GitLab using Terraform: \
    https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs
