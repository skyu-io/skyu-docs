---
title: Docker Compose Jobs on EC2
---

# Getting Started

This application type will generate pipelines that Spin up `EC2 Spot instances`, running `docker-compose` jobs inside them. The instance will shutdown automatically if the job succeeded or not.

You can schedule this as a cron job. The artifacts created from the job can be viewed from the SkyU console once they are available.

## 01 - Create Application

Create an Application with the type `Docker Compose Jobs on EC2`

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/select-application.png)

## 02 - Linking Application Repo

Link your Application repo.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/select-application-repo.png)

## 03 - Removing Default Triggers

Remove the default triggers from `Pipeline Triggers` step. Leave the all optional fields empty since you can add cron schedules from the next step.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/remove-application-triggers.png)

## 04 - Configuring the build Pipeline

Next, configure the Build Pipeline. Start by creating a new Cloud Credential for the Application. `ARN to be accessed by` needs to be `EC2 Docker Compose`

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/create-cloud-credential.png)

Make sure you click the `Create Role on AWS` button to actually create the role on AWS. (You will be redirected to do this)

> **NOTE**<br/>
> Make sure you are logged into your AWS account's console in a different tab in th same browser as the SkyU console before clicking the `Create Role on AWS` button.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/create-role-on-aws.png)

Fill the `GithubOrgName` with your Github organization name. As an example, if your repo is in a personal account, the repo URL would be something like `https://github.com/iwiick-insighture/test-service-2`. In which case the `GithubOrgName` would be 'iwiick-insighture'.

Then Select the `Region`. `Instance Types`, `Spot Instance Bid Price` and `VPCs` will be made available based on the `Region`

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/build-pipeline-pt1.png)

Once the `VPC` is selected. `Subnet ID` and `Security Group` will be made available.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/build-pipeline-pt2.png)

> `Subnet ID` needs to be a public ID and make sure `Enable auto-assign public IPv4 address` under subnet settings is ticked for the selected subnet.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/build-pipeline-pt3.png)

Then create a new Git Credential or select an existing one to add as the `Personal Access Token`. This should be a PAT with access to the repo and repo actions.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/build-pipeline-pt4.png)

> This PAT would also need to be a `non-expiring` token. All credentials saved via SkyU are safely stored using secret managers. This token will be used to register the created spot instance when ever the schedule cron is triggered. This step will fail if the token is expired at a given time. Hence a non-expiring token.

Then select the `docker-compose` file. Add optional additional `compose commands` as needed. Afterwards, provide an artefact path for the `S3 source path`. This is needed if you want to sync any outputs from the cron docker compose job. These artifacts can then be viewed via SkyU console.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/build-pipeline-pt5.png)

`S3 Sync Folder` and `Trigger Path` can be left as empty. Make sure to add the cron schedule under `Schedules` in Advanced Settings.
![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/build-pipeline-pt7.png)

> ! Make sure to type and hit enter in `Additional Compose Commands` and `Schedules`.

Finally create the Application

## 05 - Check CI logs for the compose job status.

![](/assets/images/tutorials/app-creation/docker-compose-job-on-ec2/build-pipeline-pt6.png)
