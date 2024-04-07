---
title: NodeJS to AWS Lambda Function
---

# Getting Started

This application type will create lambda function and deploy your source code there.

## 01 - Select Application

Select `NodeJS to AWS Lambda Function` application type from the catalogue.

![](/assets/images/tutorials/app-creation/nodejs-to-lambda/select-lambda-app.png)

## 02 - Fill General Details

![](/assets/images/tutorials/app-creation/nodejs-to-lambda/name-function.png)

## 03 - Link Application Repository

![](/assets/images/tutorials/app-creation/nodejs-to-lambda/link-repo.png)

## 04 - Configure Pipeline Triggers

You can configure the triggers per environment in this step defining the `branches/tags` in which the workflows are going to be Triggered. These will be prefilled with the standard conventions which you can override.

![](/assets/images/tutorials/app-creation/nodejs-to-lambda/add-triggers.png)

## 05 - Configure the build Pipeline

You can use this step to configure the build pipeline. certain options can be changed later on as well.

- **`Region`** - This would be the AWS region where the Lambda is created.
- **`List Integrations`** - This is the credential that SkyU will be using to access your AWS account. If you do not have already created a credential for Lambda integration, then follow step 6 to create the credential
- **`Lambda Name`** - Name of the Lambda function.
- **`Lambda Description`** - Description of the Lambda function.
- **`Lambda Memory Size`** - Memory allocated for the Lambda in `Mb`.
- **`Lambda Ephemeral Storage`** - Ephemeral Storage allocated for the Lambda in `Mb`.
- **`Lambda Function Url AuthType`** - Only `NONE` is supported yet.
- **`Lambda Environment Variables`** - You can add the required Environment Variables for the Lmabda as Key Value pairs here.
- **`Lambda Handler`** - The path to your handler function. usually this is `<build-directory>/index.handler` if your main file is `index` and handler function name is `handler`. Ex: `dist/index.handler`.
- **`Build Environment`** - Currently only `Node` is supported.
- **`Build Environment Version`** - Default value is `latest`.
- **`Install Dependancies Command`** - The command to intall the dependancies. Ex: `npm i`.
- **`Build Command`** - The command to build the application. Ex: `npm i`.
- **`Install Dependencies Command`** - Eg: `npm i` or `pnpm i`.
- **`Build Command`** - This should be the build command as you have configured. Eg: `npm run build`.
- **`Build Folder`** - Specify the build folder here. This is typically either `build` or `dist`.

Then click on the `Create` button.

![](/assets/images/tutorials/app-creation/nodejs-to-lambda/configure-3.png)
![](/assets/images/tutorials/app-creation/nodejs-to-lambda/configure-4.png)

## 06 - Create Integration

Here you can create a new Cloud Credential for the Application. `ARN to be accessed by` needs to be `Lambda`

![](/assets/images/tutorials/app-creation/nodejs-to-lambda/create-integration.png)

Make sure you click the `Create Role on AWS` button to actually create the role on AWS. (You will be redirected to do this)

> **NOTE**<br/>
> Make sure you are logged into your AWS account's console in a different tab in th same browser as the SkyU console before clicking the `Create Role on AWS` button.

![](/assets/images/tutorials/app-creation/nodejs-to-lambda/create-role-on-aws.png)

Fill the `GithubOrgName` with your Github organization name. As an example, if your repo is in a personal account, the repo URL would be something like `https://github.com/my-org/test-service-2`. In which case the `GithubOrgName` would be 'my-org'.

## 08 - View Application.

A new Lambda function application will now be listed under your project applications. 
Inside the application you can see the the following sections

- **`Overview`** - you can see the Engineering insights and the access URLs for the different environments
- **`Workflows`** - You can see the pipeline builds and can change the build variables and re-build
- **`Security`** - Comming soon
- **`Artifacts`** - Comming soon
- **`Releases`** -  Here you can promote the function from one environment to another
- **`Lambda Logs`** - Here you can see the Lambda logs
