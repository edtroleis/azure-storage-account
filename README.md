# Azure storage account stack with Terraform
```
Azure stack with storage account, shared file and blob with 2 containers

Resource Group

  \_ Storage account

    \_ Shared file

    \_ Blob
      \_ Container 1
      \_ Container 2
```

## Install az cli in Windows
https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli-windows?view=azure-cli-latest&tabs=azure-cli


## Configuring az cli credentials
https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html

https://www.terraform.io/docs/providers/azurerm/guides/azure_cli.html

```
Execute the commands below in Windows cmd terminal
az login

az account list

az account set --subscription="subscriptionId"

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/subscriptionId"

az login --service-principal -u CLIENT_ID -p CLIENT_SECRET --tenant TENANT_ID
* appId is the client_id defined above.
* password is the client_secret defined above.
* tenant is the tenant_id defined above.

az logout
```

## Create container int storage account to put tfstate files
```
az storage container create -n tfstate --account-name <YourAzureStorageAccountName> --account-key <YourAzureStorageAccountKey>
```

## Configure the Service Principal in Terraform
https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html

```
export ARM_CLIENT_ID="service-principal-appid"
export ARM_CLIENT_SECRET="service-principal-password"
export ARM_SUBSCRIPTION_ID="id"
export ARM_TENANT_ID="tenantId"
```

## Executing Terraform
```
*** Inside the project directory
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Configure git repo
```
git init
git add .
git commit -m "message"
git remote add origin "remote-path"
git push origin master

vim .gitignore
.terraform
*.tfstate
*.tfstate.backup
*.pub
*.log
```