## **Setting up Development Environment**

### **Requirements**
1. Docker is required for this project.
2. Terraform needs to be installed:
    - For Mac users via Homebrew: brew install terraform
    - For Windows users:
        1. Download here: https://releases.hashicorp.com/terraform/1.9.6/terraform_1.9.6_windows_amd64.zip
        2. Create a new folder in C: with the name terraform and put the extracted terraform application there
        3. Go to the System environment variables and add in PATH: C:\terraform\
        4. Check if it gets found: terraform --version

### **Build & Commands**

1. Build Gitlab with Docker:
    - First you need to adjust the docker-compose file for your Arch type. Adjust between AMD64 or ARM64 Chip.
    - Start/Build Docker:
       ```
       docker-compose up -d
       ```
    - It takes a while for Gitlab to boot, wait some minutes!
    - For root access, reset the gitlab root user:
       ```
       docker exec -it gitlab gitlab-rake "gitlab:password:reset[root]"
       ```
    - now login to GitLab at [localhost:8080](localhost:8080) with  username: "root" and your new password. 