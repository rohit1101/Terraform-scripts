# Common Terraform Scripts for infrastructure automation.

This repo contains common terraform scripts for infrastructure deployment.

- [Pre-requisites](https://github.com/rohit1101/Terraform-scripts#pre-requisites)
- [Multi region example](https://github.com/rohit1101/Terraform-scripts#multi-region-example)
- [Create a Security Group and attach it to an EC2 instance](https://github.com/rohit1101/Terraform-scripts#create-a-security-group-and-attach-it-to-an-EC2-instance)

---

[Pre-requisites]: #pre-requisites
[Multi region example]: #multi-region-example
[Create a Security Group and attach it to an EC2 instance]: #create-a-security-group-and-attach-it-to-an-EC2-instance

### Pre-requisites

Make sure Terraform is installed on your machine if not refer this [link](https://developer.hashicorp.com/terraform/install) for installation steps

---

### Multi region example

For this example check the `multi-region-example` folder, this example involves creating EC2 instances on multiple region by configuring the provider appropriately

What happens if we do not provide a default value for a `variable` in `variable.tf` file ?

There are two ways we can handle this issue

1. By default `terraform plan` and `terraform apply` will prompt for the variable values if not provided in the default field
<img width="1440" alt="image" src="https://github.com/user-attachments/assets/af6bed2f-2580-4acc-b174-bce5659ce410">

2. We can pass the variables during `terraform plan` and `terraform apply` command for example `terraform plan -var instance_type="t2.micro"` please check this [link](https://developer.hashicorp.com/terraform/language/values/variables#variables-on-the-command-line) for more information.


<img width="1440" alt="image" src="https://github.com/user-attachments/assets/a1700755-5cc1-4a60-8117-5647951ff67d">

---

### Create a Security Group and attach it to an EC2 instance
