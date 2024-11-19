# Exercise 1
- Set up your gitlab as described in [GitLab_SetUp](./GitLab_SetUp.md)
- Create your personal Token and put it in the tfvars file
    - Hint: The Code is commented out!

# Exercise 2
Initialize your Terraform project as describt in [Terraform_info](./Terraform_Info.md)

# Exercise 3
- Create an new module named "gitlab-users.tf"
- Create 3 new Local Users with different names.
    - One Admin
    - One External

- Plan and Apply your changes.
- You can see your changes in GitLab in your admin view.

# Exercise 4
- Create a new module named "gitlab-group.tf".
    - Plan and apply your changes.
- Add one User too the group using "gitlab_group_membership".
    - You can add all users with their ID individually.
    - Hint! Pass the ID of the group with gitlab_group."group_name".id.

# Exercise 5
- Create a new module named "gitlab-project.tf".
    - Plan and apply your changes.
- Create a project for your Users.
    - Set visibility to private.
    - Plan and apply your changes.
- Add two Users to the project.
    - One user should have accesslevel set to Developer and one to Guest.
    - Plan and apply your changes.

# Exercise 6
- Go back to your file "gitlab-group.tf".
- Create a new project for your group.
    - Plan and apply your Changes.