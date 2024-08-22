---
title: Managing Access at Different Levels
---

One of the key concepts in SkyU IAM system is role inheritance. When a role is assigned to a user, team, or service account at a higher level (e.g., organization level), that role is automatically propagated to all child layers (projects and environments) within that hierarchy. This means that permissions granted at higher levels apply globally to all entities within that hierarchy.

## Invite User to the Organization

- Navigate to Organization Level and then the IAM section of the left navigation bar.
    <figure markdown="span">
    ![Image ](/assets/images/tutorials/iam/navigate-to-org.png){ width="500" }
    <figcaption>figure 1: Organization Switcher</figcaption>
    </figure>


- Click on the 'Invite' button and add the user email and the required permissions for that user within the organization.
    
    !!! note
        You can add more than one user at a time by separating the email addresses with a comma.
        Also you can add more than one role to a user by clicking on the 'Add Role' button.

    <figure markdown="span">
    ![Image](/assets/images/tutorials/iam/org-member.png){ width="500" }
    <figcaption>figure 2: Organization Role Selector</figcaption>
    </figure>



- Click Save.

## Invite User to the Project

- Go to the project where you want to give access to the user.

     <figure markdown="span">
    ![](/assets/images/tutorials/iam/navigate-to-project.png){ width="500" }
    <figcaption>figure 3: Project Switch</figcaption>
    </figure>

- Navigate to the IAM section of the project.
- Click on the 'Invite Users' button and add the user email and the required permissions for that user within the project.

    !!! note
        You can only users who are already part of the organization.

    <figure markdown="span">
    ![](/assets/images/tutorials/iam/project-permissions.png){ width="500" }
    <figcaption>figure 4: Project Role Selector</figcaption>
    </figure>

- Click Save.


##  Create a Team in the organization

Click on the `Teams` section on the IAM page. Then click on the Add Team button and provide a name for the team. Then add the user emails and the required permissions for that team.

The Team that you create here has the access through out the organization.

![](/assets/images/tutorials/iam/teams.png)

##  Create a Service Account in the organization

Click on the `Service Accounts` section on the IAM page. Then click on the Add Service Account button and provide a name for that service account. Then add the required permissions for that service account.

The service account you create here has access through out the organization and it do not have an expire time. You can use this for calling SkyU APIs through outside services such as Github actions.

![](/assets/images/tutorials/iam/service-account.png)

!!! note
    You can create the same resources (Users, Teams, Service Accounts) in the project level by navigating to the IAM page after selecting a project.

