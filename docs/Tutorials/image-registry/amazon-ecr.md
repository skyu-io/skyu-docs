---
title: Creating Amazon Elastic Container Registry
---

# Getting Started

To initiate linking Docker integrations with your project, first, select a project within your organization.

![](/assets/images/tutorials/image-registry/amazon-ecr/registry-list.png)

Click on `+ Integration` to introduce a new Amazon Elastic Container Registry credential into your project.

## 01 - Add Credential

When linking a Amazon Elastic Container Registry resource, you are required to provide the following details:

![](/assets/images/tutorials/image-registry/amazon-ecr/add-amazon-ecr.png)

Make sure you click the `Create Role on AWS` button to actually create the role on AWS. (You will be redirected to do this)

> **NOTE**<br/>
> Make sure you are logged into your AWS account's console in a different tab in th same browser as the SkyU console before clicking the `Create Role on AWS` button.

![](/assets/images/tutorials/image-registry/amazon-ecr/create-stack.png)

Fill the `GithubOrgName` with your Github organization name. As an example, if your repo is in a personal account, the repo URL would be something like `https://github.com/git-username/repo-name`. In which case the `GithubOrgName` would be 'git-username'.

## 02 - Edit Credential

Any Amazon Elastic Container Registry credential you've added can be modified later through the image registries list page.
