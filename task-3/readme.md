Ansible (ansible/):

This folder contains the Ansible playbooks and necessary configuration files to set up services on the EC2 instances.
playbook.yml: Ansible playbook to deploy the required tasks on the EC2 instance.
nginx.conf: The NGINX configuration file to be deployed on the EC2 instance using Ansible.
inventory: Inventory file that defines the EC2 instances on which Ansible will run the playbook.
node-app : containes the task-1 that we deploy on docker 




Terraform (terraform/):

This folder contains Terraform configurations for provisioning the network, security groups, EC2 instances, and other resources.
01-network/: Contains Terraform modules for creating networking resources like VPCs, subnets, internet gateways (IGWs), route tables, and security groups (SGW).
02-service/: Contains Terraform modules to create EC2 instances and attach them to the created network resources.