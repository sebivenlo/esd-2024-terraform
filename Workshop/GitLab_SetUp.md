# **Build & Commands**

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


    [Back to Exercises](./Exercise.md)