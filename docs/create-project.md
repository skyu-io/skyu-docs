---
title: Create a Project
---

All `GitOps` related operations are handled at a Project Level. All Projects can be viewed at the Organization level from the SkyU console.

![](/assets/images/docs/create-project/viewing-org-level-projects.png)

## 01 - General Details

Give a meaningful name for the project and a description. Project description can be changed later on as well.

![](/assets/images/docs/create-project/general-details.png)

## 02 - Authenticate

This step is to authenticate a GiHub user via the SkyU GitHub Application. You are free to choose between creating a new GitOps repo for the project or select an existing one.

![](/assets/images/docs/create-project/authenticate.png)

> For most Projects, `Create New` would be the ideal option where SkyU will generate a new GitHub repository to GitOps

## 03 - Configure GitOps

![](/assets/images/docs/create-project/configure-gitops.png)

## 04 - Configure Secrets

In this step, you have the options to select the preferred secret manager for your project. The `SkyU Secret Manager` is a shared secret manager provided by us. You also have the option to configure a `Dedicated Secret Manager`. All project secrets will be saved in your preferred secret manager.

![](/assets/images/docs/create-project/configure-secrets.png)

> You also have the option to migrate from the SkyU Secret Manager to a dedicated secret manager later on as well. This is a one time process where all secrets stored in the SkyU Secret Manager will be migrated into your Dedicated Secret Manager.

Configuring the `Dedicated Secret Manager` is quite straightforward. Click on `Create Role on AWS` to actually create the Role in your AWS account before clicking next.

> **NOTE**<br/>
> Make sure you are logged into your AWS console in a different tab in the same browser window before clicking the `Create Role on AWS` button.

![](/assets/images/docs/create-project/external-secret-manager.png)

## 05 - Create Environments

This step can be used to configure the different Environments needed for the project. While you can proceed with the defaults, you can also proceed without environments.

![](/assets/images/docs/create-project/create-envs.png)

> At least one Environment is needed to create an application in SkyU. If you did not configure Environments during project creation, you can always create new environments from the `Environments` tab in the SkyU console Aside Menu.

## 05 - Complete Creation

You can use this step to finalize the Project creation, Continue or Go back.

![](/assets/images/docs/create-project/complete-creation.png)
