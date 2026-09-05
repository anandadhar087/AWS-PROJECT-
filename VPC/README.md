### Setting Up Infrastructure on AWS Using Terraform

Built and provisioned AWS infrastructure using **Terraform** to automate the deployment of a highly available web application environment. Created a custom **VPC** with two public subnets across **ap-south-1a and ap-south-1b**, an Internet Gateway, route table, subnet associations, and a security group with HTTP and SSH access.

Deployed **two t3.micro EC2 instances** in separate Availability Zones and used `user_data` scripts to configure the web servers. Created an **S3 bucket** for cloud storage and configured an **Application Load Balancer (ALB)** spanning both subnets. Set up an ALB target group with health checks, registered both EC2 instances as targets, and configured an HTTP listener to distribute incoming traffic to the healthy instances.

Used Terraform outputs to retrieve the **ALB DNS name**, enabling verification of the deployed web application through the load balancer.

**Technologies:** AWS, Terraform, VPC, EC2, S3, Application Load Balancer, Target Groups, Security Groups, Internet Gateway, Route Tables.
