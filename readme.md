Task 1: Simple Node.js Application Deployment on Docker Container
Description:

This task involves creating a Dockerfile for a simple Node.js application that listens on port 3000. 
Deliverables:

Dockerfile (located in the task1/ directory).



Task 2: Kubernetes (K8s) Deployment
Description:

This task involves creating a Kubernetes deployment configuration file for a web application. The deployment uses 3 replicas, the nginx:latest image, and exposes port 80. 
Deliverables:

Kubernetes deployment YAML file (located in the task2/ directory).



Task 3: Resource Provisioning and Configuration Management with Terraform and Ansible
Description:

This task involves creating a Terraform script to provision an EC2 instance with necessary security groups and VPC configurations.
The EC2 instance is configured with an NGINX web server.
The Node.js application from Task 1 is deployed on the EC2 instance using Ansible.
Deliverables:

Terraform scripts for EC2 and network provisioning (located in task3/terraform/).
Ansible playbooks for configuring NGINX and deploying the Node.js application (located in task3/ansible/).
NGINX configuration file (located in task3/ansible/nginx_reverse_proxy.conf).
