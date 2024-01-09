---
title: Overview
---

# SkyU Console

Internal Developer Platform built for Developers

> Unlock the full potential of your development process with a modern internal developer platform designed to empower developers and streamline DevOps workflows. Embrace innovation without the constraints of continuous development.


## Features

### CI/CD Out of the Box
SkyU allows developers to take full control and Create CI/CD pipelines from a massive range of templates catered to your specific needs.

![](/assets/images/docs/workflow-runs.png) 

### Applications and Workloads
SkyU enables developers and teams to deploy, manage and monitor applications and workloads anywhere without having to worry about the underlying infrastructure.

![](/assets/images/docs/application-runtime.png) 

- **Auto-scaling**

    Manages the necessary services on your clusters to horizontally or vertically scale your applications and workloads.

    ![](/assets/images/docs/scaling.png) 

- **DNS and Load-balancing**

    - Supports multi-port mappings and fan-out ingress configurations
    - Automated TLS(HTTPS) Certificate rotation using LetsEncrypt
    - Supports custom Certificate Providers through cert-manager
    - Supports Nginx and Traefik Ingress Controllers out of the box (but support is available for other controllers)


### Manage Multiple Environments

Separate environments for development, staging, UAT and production (etc) can be easily created and managed with appropriate configurations.

Having a consistent process to create and manage the many environments (development, staging, test, UAT, production, etc) that your development teams depend on is key to achieving stable and high-velocity release cycles.

Create and manage environments in multiple configurations and provides your teams with the tools to easily deploy, manage and monitor workloads on your Infrastructure

![](/assets/images/docs/environments.png)


- **Create multiple environments on the same Cluster.**
  
    SkyU configures the namespacing and other underlying network and security policies to achieve optimal isolation between your different environments.


- **Create environments that span across different Clusters.**
  
    Create Multi-Cluster environments that are synchronized across any number of Clusters in your project. Multi-cluster environments provide a cookie-cutter approach to building highly resilient, disaster-recoverable systems with ease.

- **Restrict permissions and access to environments** (and applications running in those environments) using RBAC Controls in SkyU.


- **Promote applications between environments.**
  
    Promote containers between environments with a single-click (manual approval) or enable continuous deployment pipelines that makes use of advanced deployment strategies such as blue/green and canary releases with a few clicks.


- **Environment-level audit logs and metrics**
  
    Every change to made to an environment is logged and audited so you're always on top of your application infrastructure. Easily Monitor application metrics that span multiple clusters (multi-cluster environments).

### Native Kubernetes Support
Provider-agnostic connectivity to any Kubernetes Cluster whether its public, private, on-premise or on your laptop.

![](/assets/images/docs/cluster-types.png)


### Multi Cluster and Multi Cloud Support

>  Synchronize environments and applications between multiple Kubernetes clusters to create highly-resilient systems.

SkyU breaks-out your application layer from any and all underlying provider/vendor specific lock-ins  allowing you to migrate entire workloads and environments between different clusters with a few clicks of a button.

### Centralized Configuration

Easily create, version and apply any kind of configuration (config files, service accounts, .env files, etc) or sensitive secrets to your applications.

SkyU utilizes AWS Secret Manager to encrypt and securely store your sensitive credentials/secrets and injects/mounts them into your applications. But depending on your compliance requirements you can always 'Bring your own Vault' and plug it in.


### Industry-strength Integrations
From git repositories, CI/CD tools to monitoring and observability tools and container registry integrations are supported.

Integrate any Container Registry of choice to your projects. SkyU will apply the necessary configurations to all connected clusters so that your teams can seamlessly utlize your Continuous Integration pipelines to deploy to any environment.

