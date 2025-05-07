# Execute 

leverage the following command to provision the solution.

``` powershell
az login --scope https://management.core.windows.net//.default
az group create --name rg-mms-01 --location westeurope
az deployment group create --resource-group rg-mms-01 --template-file deploy.bicep --parameters deploy.bicepparam

```
