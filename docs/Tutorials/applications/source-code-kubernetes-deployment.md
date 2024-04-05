---
title: Source Code to Kubernetes Deployment
---

# Getting Started

This application type is able to take your source code —particularly those designed as `Microservices` or `APIs`, and those involving long-running background tasks— and deploying it as a set of scalable, manageable services within a Kubernetes environment.

## 01 - Select Application

Select `Source Code to Kubernetes Deployment` application type from the catalogue.

![](/assets/images/tutorials/app-creation/source-code-kubernetes-deployment/select-application.png)

## 02 - Fill General Details

Provide a name (Required) and a small description (Optional) of the appliction.

![](/assets/images/tutorials/app-creation/source-code-kubernetes-deployment/step1-general-details.png)

## 03 - Link Application Repository

Link your repository which holds the application code.

![](/assets/images/tutorials/app-creation/source-code-kubernetes-deployment/step2-link-repo.png)

## 04 - Configure Pipeline Triggers

You can configure the triggers per environment in this step defining the `branches/tags` in which the workflows are going to be Triggered. These will be prefilled with the standard conventions which you can override.

![](/assets/images/tutorials/app-creation/source-code-kubernetes-deployment/step3-add-triggers.png)

## 05 - Configure the Build Pipeline

You can use this step to configure the build pipeline.

- **`Trigger Path`** - This `optional` setting allows you to specify a file or folder path. Any changes to the selected path will automatically trigger the pipeline.

- **`Dockerfile Path`** - Define the relative path from the project root to the `Dockerfile`. This path is necessary for the pipeline to locate your Dockerfile.

- **`Dockerfile Build Context`** - Select the directory that contains the Dockerfile. This directory serves as the build context for Docker.

- **`List Integrations`** - Choose a registry resource (e.g., Docker Hub, Amazon ECR, etc.) to store the built image using the SkyU service. Additional details on how to add these credentials are provided below.

- **`Image Repository Name`** - Specify the repository name (e.g., docker.io/<username\>/note-app) where the built image will be stored.

![](/assets/images/tutorials/app-creation/source-code-kubernetes-deployment/step4-build-pipeline.png)

By selecting the "Create New Credential" option, you can link a registry resource to save the built image via the pipeline service offered by SkyU. For a complete guide on linking Image Registries, visit the [Create Image Registry tutorial](../image-registry/docker-registry.md).

## 06 - Add Service Ports

In this step, you will add the service ports. Additionally, if your application includes a Swagger specification for API documentation, you should also provide the path to the swagger.json file. This configuration can be adjusted later if necessary.

![](/assets/images/tutorials/app-creation/source-code-kubernetes-deployment/step5-service-ports.png)

Finally create the Application.

## 06 - View Application

A new `Services` application will now be listed under your project applications.
