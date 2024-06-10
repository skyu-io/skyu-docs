---
title: Deploy RDS instance - Postgres
---

# Getting Started

Once you enabled infrastructure feature your project ready to deploy infrastructure to your cloud platform. In this tutorial we're going to deploy a postgres rds instance in AWS.

## 01 - Create Infrastructure

Click `Create Infrastructure`. In will navaigate you to the page which contains customizable infrastructure templates for specific resources. From there choose AWS RDS template.

![](/assets/images/tutorials/infrastructure/infrastructure_templates.png)

## 02 - Create IAM role

Once you choose the template, click `Launch` button which navigate you to provide the name for your infrastructure,role arn and region.

![](/assets/images/tutorials/infrastructure/launch-4.png)

Make sure you click the `Generate ARN` button to actually create the role on AWS. (You will be redirected to do this)

![](/assets/images/tutorials/infrastructure/launch-2.png)

![](/assets/images/tutorials/infrastructure/launch-3.png)
> **NOTE**<br/>
> Make sure you are logged into your AWS account's console in a different tab in th same browser as the SkyU console before clicking the `Generate ARN` button.

Once the IAM role created successfully place the role arn and click `Next`

![](/assets/images/tutorials/infrastructure/launch-1.png)


## 03 - Provide necessery parameter values for the Instance

Next, you need to provide parameter values that is requested to create the rds instance. Since we're going to create a postgres instance we need to choose the Engine as `postgres` and fill the other required fields as well.

![](/assets/images/tutorials/infrastructure/parameters.png)

And once filled all required fields click `Launch`.

> **NOTE**<br/>
> Please be patient as the infrastructure creation process may take some time to complete.

![](/assets/images/tutorials/infrastructure/infrastructure_creating.png)

## 04 - Troubleshoot and re-launch the Infrastructure

If the infrastructure fails to create you can view logs to see where the error occured. Once you figure out the error, if that is due to the inputs values that you have passed, you can edit the value and can re-launch the infrastruture again.

![](/assets/images/tutorials/infrastructure/troubleshoot.png)

## 05 - Successfully deployed a Postgres RDS Instance 

If the status becomes `Success` which is mean, that you have successfully deployed your first rds instance in you AWS through skyU Platform.


![](/assets/images/tutorials/infrastructure/success1.png)

![](/assets/images/tutorials/infrastructure/success0.png)


To confirm you creation, login to your AWS console and check the rds resource.

![](/assets/images/tutorials/infrastructure/aws.png)

