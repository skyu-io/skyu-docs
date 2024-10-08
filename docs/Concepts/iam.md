---
title: Users and Access Controls
---

In SkyU, Identity and Access Management (IAM) plays a crucial role in managing user permissions and access control. This section outlines the hierarchical structure of IAM roles and how they are applied across different layers within the system.

## Hierarchical Structure

SkyU IAM system follows a hierarchical structure consisting of three layers:

1. **Organization**: The top-most layer representing the overarching entity within the system.
2. **Project**: Child layer under the organization, representing specific projects or initiatives within the organization.
3. **Environment**: Further child layer under projects, representing different environments such as development, staging, or production.

Each level has its own set of permissions that can be granted to users or groups. 

!!! note "Example"
    When a user is granted a permission at a higher level, it is automatically inherited by all the lower levels. For example, if a user is granted read access to an organization, they will have read access to all the projects and environments within that organization.


![](/assets/images/docs/concepts/access-inheritance.png)

## Role Assignment Entities

Roles within our IAM system can be assigned to the following entities:

- **Users**: Individual users who interact with the system.
- **Teams**: Groups of users organized for collaborative purposes.
- **Service Accounts**: Accounts used by applications or services to interact with our system programmatically.

!!! note
    Service accounts can be used to generate a token which does not have a expire time. you can renew the token any time but the previous tokens created with the same service account are also valid until the service account is deleted.

## Role Inheritance

One of the key concepts in SkyU IAM system is role inheritance. When a role is assigned to a user, team, or service account at a higher level (e.g., organization level), that role is automatically propagated to all child layers (projects and environments) within that hierarchy. This means that permissions granted at higher levels apply globally to all entities within that hierarchy.

For example, if a user is assigned an organization-level role with certain privileges, they will have the same privileges across all projects and environments belonging to that organization.

!!! note
    The above inheritance is only deviated for the `Member` role. It does not have the inheritance. just a basic permission for the applied access level (organization, project or environment)



## Roles and Permissions

SkyU provides different roles that can be assigned to users or groups at each level. The roles define the permissions that the users or groups have on the resources at that level. The following roles are available in SkyU:


### Custom Roles


SkyU provides an option to create custom roles at organization and project level. There the administrator can attach some restricted permissions from a given static permissions list to a user, team or a service account to give that entity only a specific access. That role also follows the above mentioned hierarchy.

### Static Roles

#### Organization Level

| **Category** | Sub-Category | Description |
|--------------|--------------|-------------|
| **General**  | owner        | Full Access to Organization Resources |
|              | editor       | Full Access to Organization Resources. No Delete Access |
|              | viewer       | Full View Access to Organization Resources |
|              | member       | View Organization and Projects within that Organization |
| **Projects** | Project Creator | Create Projects within the Organization |
| **IAM**      | IAM Viewer   | View Organization Users, Roles, Teams and Service Accounts |
|              | IAM User Admin | Delete Organization Users |
|              | IAM User Editor | Invite/Edit Organization Users |
|              | IAM Roles Admin | Delete Organization Roles |
|              | IAM Roles Editor | Add/Edit Organization Roles |
|              | IAM Teams Admin | Delete Organization Teams |
|              | IAM Teams Editor | Add/Edit Organization Teams |
|              | IAM Service Accounts Admin | Delete Organization Service Accounts |
|              | IAM Service Accounts Editor | Add/Edit Organization Service Accounts |
| **Settings** | Settings Admin | Delete Organizations |
|              | Settings Editor | View General and IDP Settings, Create IDP |
| **Insights** | Insights Viewer | View Organization Insights |
| **Security** | Audit Logs Viewer | View Organization Audit Logs |


#### Project Level

| **Category**    | Sub-Category                          | Description |
|-----------------|---------------------------------------|-------------|
| **Cluster**     | Cluster Viewer                        | View Clusters and Cluster Agent, Plugins, Activity, DNS, Observability Info, Nodes and Namespaces |
|                 | Cluster Observability Viewer          | View Logs, Metrics and Network Info |
|                 | DNS Admin                             | Delete DNS |
|                 | DNS Editor                            | Add DNS |
|                 | Plugins Admin                         | Delete Plugins |
|                 | Plugins Editor                        | Add Plugins |
|                 | Agent Admin                           | Delete Pods |
|                 | Agent Editor                          | Edit Cluster Configs |
|                 | Cluster Editor                        | Create Clusters |
| **Integrations**| Git Integrations Admin                | Delete Git Integrations |
|                 | Git Integrations Editor               | Add/Edit Git Integrations |
|                 | Cloud Integrations Admin              | Delete Cloud Integrations |
|                 | Cloud Integrations Editor             | Add/Edit Cloud Integrations |
|                 | Image Registeries Integrations Admin  | Delete Image Registeries Integrations |
|                 | Image Registeries Integrations Editor | Add/Edit Image Registeries Integrations |
|                 | DNS Integrations Admin                | Delete DNS Integrations |
|                 | DNS Integrations Editor               | Add/Edit DNS Integrations |
| **Settings**    | Settings Admin                        | Delete Projects |
|                 | Settings Editor                       | Enable Features |
|                 | Settings Viewer                       | View General Settings, Repositories, Features and Integrations |
| **Configs**     | Env Configs Admin                     | Delete Env Configs |
|                 | Env Configs Editor                    | Add/Update Env Configs |
|                 | Env Configs Viewer                    | View Env Configs |
| **Application** | Application Admin                     | Delete Applications |
|                 | Application Editor                    | Create Applications |
|                 | Application Viewer                    | View Applications |
|                 | API Tester                            | Test APIs |
|                 | Application Security Viewer           | View Code Quality and Image Vulnerabilities |
|                 | Application Metrics and Logs Viewer   | View Application Metrics and Logs |
|                 | Application Workflows Viewer          | View CI/CD Runs, Build Variables, Pipeline Designs, Secrets and YAML |
|                 | Application Workflows Admin           | Add Env Variables and Secrets, Edit Pipeline Design and YAML |
|                 | Runtime Editor                        | Restart Pods |
|                 | Runtime Admin                         | Delete Pods |
|                 | Container Editor                      | Add/Edit Containers and Scaling Options |
|                 | Container Admin                       | Delete Containers |
|                 | Health Checks Admin                   | View and Manage Health Checks |
|                 | Ingress Admin                         | Create/Edit/Delete Ingress |
|                 | Gitops Admin                          | Edit Gitops File |
|                 | Configs Admin                         | Create/Edit/Delete Config Mounts |
|                 | Environment Info Viewer               | View Releases, Runtime, Container, Config Mounts, Scaling, Health Checks, Ingress, Gitops Info |
| **Observability**| Observability Admin                  | Edit/Delete Observability Alerts |
|                 | Observability Viewer                  | View Observability Info (Health, Runtime, Cluster... etc.) |
| **Releases**    | Releases Viewer                       | View Releases |
|                 | Promote Access                        | Promote Apps |
| **Insights**    | Insights Admin                        | Access Insights settings |
|                 | Insights Viewer                       | View Project Insights |
| **IAM**         | IAM Viewer                            | View Project Users, Roles, Teams and Service Accounts |
|                 | IAM User Admin                        | Delete Project Users |
|                 | IAM User Editor                       | Invite/Edit Users |
|                 | IAM Roles Admin                       | Delete Project Roles |
|                 | IAM Roles Editor                      | Add/Edit Project Roles |
|                 | IAM Teams Admin                       | Delete Project Teams |
|                 | IAM Teams Editor                      | Add/Edit Project Teams |
|                 | IAM Service Accounts Admin            | Delete Project Service Accounts |
|                 | IAM Service Accounts Editor           | Add/Edit Project Service Accounts |
| **General**     | owner                                 | Full Access to Project Resources |
|                 | editor                                | Full Access to Project Resources. No Delete Access |
|                 | viewer                                | Full View Access to Project Resources |
|                 | member                                | View Project and Apps within that Project |
| **Security**    | Audit Logs Viewer                     | View Project Audit Logs |
| **Environment** | Environment Editor                    | Create Environments, Connect/Unlink Clusters, Add Namespaces,  Edit Gitops and Triggers |
|                 | Environment Viewer                    | View Environments and Env Users, Namespaces, Gitops, Workflows and Triggers |
|                 | Environment Users Editor              | Add/Edit Environment Users |


#### Environment Level

| **Category** | Sub-Category | Description |
|--------------|--------------|-------------|
| **General**  | owner        | Full Access to Environment Resources |
|              | editor       | Full Access to Environment Resources. No Delete Access |
|              | viewer       | Full View Access to Environment Resources |


## Next Steps

Tutorials and guides on how to manage users and access controls are available in the [Tutorials](/Tutorials/user-management/iam.html) section.

-   [Invite Users to the Organization](/Tutorials/user-management/iam.html)
-   [Create Teams in the Organization](/Tutorials/user-management/teams.html)
-   [Create Service Accounts in the Organization](/Tutorials/user-management/service-account.html)
-   [Create Custom Roles](/Tutorials/user-management/custom-roles.html)
-   [Manage Permissions at Different Levels](/Tutorials/user-management/access-levels.html)
-   [Setup LDAP/AD Integration](/Tutorials/user-management/ldap-ad.html)
-   [Example Scenarios](/Tutorials/user-management/example-scenarios.html)