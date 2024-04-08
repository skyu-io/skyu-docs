---
title: Identity and Access Management
---

# Getting Started

This section contains options to manage the permissions of the users, teams and service accounts.

## 01 - Invite User to the organization

Navigate to IAM section of left navigation bar. There you get landed on the `User` section by default. 
Click on the invite button and add user email and the required permissions for that user within the organization.

![](/assets/images/tutorials/iam/invite.png)

## 02 - Create a Team in the organization

Click on the `Teams` section on the IAM page. Then click on the Add Team button and provide a name for the team. Then add the user emails and the required permissions for that team.

The Team that you create here has the access through out the organization.

![](/assets/images/tutorials/iam/teams.png)

## 03 - Create a Service Account in the organization

Click on the `Service Accounts` section on the IAM page. Then click on the Add Service Account button and provide a name for that service account. Then add the required permissions for that service account.

The service account you create here has access through out the organization and it do not have an expire time. You can use this for calling SkyU APIs through outside services such as Github actions.

![](/assets/images/tutorials/iam/service-account.png)

> **NOTE**<br/>
> You can create the same resources (Users, Teams, Service Accounts) in the project level by navigating to the IAM page after selecting a project.

![](/assets/images/tutorials/iam/proj-level.png)