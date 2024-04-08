---
title: Resource Heirachy
---


The following diagram depicts the high-level resources and their relationships in the SkyU Console.

![](/assets/images/docs/concepts/heirachy.png)


Each level of heirachy, Oragnization, Project and Environment, has its own access control and permissions. You can learn more about this in the [Access Control](/Concepts/access-control.html) section.


## Projects and Kubernetes Clusters

Each Project in SkyU can have multiple Kubernetes Clusters associated with it. These clusters can be used to deploy applications and services. Kubernetes clusters are associated with an environment through namespaces. 

![](/assets/images/docs/concepts/environments-clusters.png)

> A Kubernetes Cluster can be shared across multiple environments.

## Projects and Secret Management

Each Project in SkyU can have only one Secret Manager associated with it regardless of the number of environments. The Secret Manager can be either the SkyU Secret Manager or a Dedicated Secret Manager. You can learn more about this in the [Secret Management](/Concepts/secret-management.html) section.


## Applications and Container Registries

Applications in SkyU are associated with a single Container Registry per application. SkyU can support any container registry. However, for a single application across multiple environments, the container registry should be the same.


![](/assets/images/docs/concepts/common-specific.png)
