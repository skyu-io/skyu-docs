---
title: Web Application on AWS Cloudfront
---

# Getting Started

This application type will Host a Static web application on AWS cloudfront for each environment configured. Distributions created from the application can be viewed from the SkyU console once they are available.

## 01 - Enable Web Apps

Web apps needs to be enabled per Project. This application type is not enabled by default and you will see a banner saying `Enable Web Applications on AWS Cloudfront` if the feature is not yet enabled in the project.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/enable-webapps.png)

This features can be enabled in project settings as well.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/enable-webapps-in-settings.png)

## 02 - Select Application

Select `Web Application on AWS Cloudfront` application type from the catalogue.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/select-webapps.png)

## 03 - Fill General Details

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/step1-general-details.png)

## 04 - Link Application Repository

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/step2-link-repo.png)

## 05 - Configure Pipeline Triggers

You can configure the triggers per environment in this step defining the `branches/tags/schedules` in which the workflows are going to be Triggered. These will be prefilled with the standard conventions which you can override.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/step3-add-triggers.png)

## 06 - Configure the build Pipeline

You can use this step to configure the build pipeline. certain options can be changed later on as well.

- **`Default Root Object`** - This would be the default `html` file in the build folder. In most cases this would be the `index.html`file
- **`Host`** - Currently only `Cloudfront` is supported.
- **`Build Environment`** - Currently only `Node` is supported.
- **`Build Environment Version`** - Default value is `latest`, you can provide a specific version as well.
- **`Dependency Manager`** - Supports `NPM`, `PNPM` and `YARN`.
- **`Dependency Manager Version`** - Default value is `latest`, you can provide a specific version as well.
- **`Install Dependencies Command`** - Eg: `npm i` or `pnpm i`.
- **`Build Command`** - This should be the build command as you have configured. Eg: `npm run build`.
- **`Build Folder`** - Specify the build folder here. This is typically either `build` or `dist`.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/step4-configure-build-pipeline.png)

## 07 - Add Environment Variables

Add your application Environment Variables in this step. You can add or update these after creation as well. Finally Create the Application.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/step5-add-env-vars.png)

## 08 - View Application.

A new web app application will now be listed under your project applications.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/created-webapp.png)

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/webapp-overview.png)

## 09 - Build Variables.

`Build Variables` tab under `workflows` aside menu can be used to update/add/remove Environment Variables as well as to change the build configurations per environment.

![](/assets/images/tutorials/app-creation/web-application-on-aws-cloudfront/build-variables.png)
