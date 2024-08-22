---
title: Identity and Access Management
---

In SkyU, Identity and Access Management (IAM) plays a crucial role in managing user permissions and access control. This section outlines the hierarchical structure of IAM roles and how they are applied across different layers within the system.

## Hierarchical Structure

SkyU IAM system follows a hierarchical structure consisting of three layers:

1. **Organization**: The top-most layer representing the overarching entity within the system.
2. **Project**: Child layer under the organization, representing specific projects or initiatives within the organization.
3. **Environment**: Further child layer under projects, representing different environments such as development, staging, or production.

## Role Assignment Entities

Roles within our IAM system can be assigned to the following entities:

- **Users**: Individual users who interact with the system.
- **Teams**: Groups of users organized for collaborative purposes.
- **Service Accounts**: Accounts used by applications or services to interact with our system programmatically.

> **NOTE**<br/>
> Service accounts can be used to generate a token which does not have a expire time. you can renew the token any time but the previous tokens created with the same service account are also valid until the service account is deleted.

## Role Inheritance

One of the key concepts in SkyU IAM system is role inheritance. When a role is assigned to a user, team, or service account at a higher level (e.g., organization level), that role is automatically propagated to all child layers (projects and environments) within that hierarchy. This means that permissions granted at higher levels apply globally to all entities within that hierarchy.

For example, if a user is assigned an organization-level role with certain privileges, they will have the same privileges across all projects and environments belonging to that organization.

> **NOTE**<br/>
> The above inheritance is only deviated for the `Member` role. It does not have the inheritance. just a basic permission for the applied access level (organization, project or environment)

## Role-Based Access Control (RBAC)

SkyU IAM system employs Role-Based Access Control (RBAC) to manage user permissions effectively. Each role is defined with specific sets of permissions that dictate what actions a user, team, or service account can perform within the system. Roles are assigned to entities based on their responsibilities and requirements.

## Example Scenarios

### Scenario 1: Organization-Level Role Assignment

- **Entity**: User
- **Role**: Owner
- **Assigned To**: Organization A

In this scenario, the user is assigned an `Owner` role at the organization level (Organization A). As a result, the user will have `owner` privileges across all projects and environments within Organization A.

### Scenario 2: Project-Specific Role Assignment

- **Entity**: Team
- **Role**: `Editor`
- **Assigned To**: Project B

In this scenario, a team of developers is assigned a `Edit` role specifically to Project B. This role grants the team permissions to perform development tasks within Project B and its environments only, without affecting other projects or environments within the organization.

## Custome Roles

SkyU provides an option to create custom roles at organization and project level. There the administrator can attach some restricted permissions from a given static permissions list to a user, team or a service account to give that entity only a specific access. That role also follows the above mentioned hierarchy


