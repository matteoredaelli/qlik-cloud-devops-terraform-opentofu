# qlik-cloud-devops-terraform-opentofu

Qlik Cloud devops with OpenTofu or Terraform

Now you can create your Qlik cloud resources with

```bash
export TF_VAR_QLIK_APIKEY=xxxxxxxxxxxxxxxxxxxxxxxx
export TF_VAR_QLIK_URI=https://mytenant.eu.qlikcloud.com

tofu init
tofu plan -out myplan
tofu apply myplan
```