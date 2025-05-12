# **Azure Deployment with Bicep**

This project provisions an Azure-based solution using Bicep templates. It includes options to deploy the solution with or without monitoring resources.

---

## **Prerequisites**
Before running the deployment commands, ensure the following:
1. **Azure CLI** is installed. [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
2. You are logged in to your Azure account using the Azure CLI.

---

## **Deployment Options**

### **1. Provision the Solution Without Monitoring**
Use the following commands to deploy the solution without monitoring resources (e.g., Application Insights, Log Analytics Workspace):

```powershell
# Log in to Azure
az login --scope https://management.core.windows.net//.default

# Create a resource group
az group create --name rg-mms-02 --location westeurope

# Deploy the Bicep template
az deployment group create --resource-group rg-mms-02 --template-file deploy.bicep --parameters deploy.bicepparam
```

---

### **2. Provision the Solution With Monitoring**
Use the following commands to deploy the solution with monitoring resources:

```powershell
# Log in to Azure
az login --scope https://management.core.windows.net//.default

# Create a resource group
az group create --name rg-mms-02 --location westeurope

# Deploy the extended Bicep template
az deployment group create --resource-group rg-mms-02 --template-file extend.bicep --parameters extend.bicepparam
```

---

## **Deployment Parameters**
The deployment is parameterized for flexibility. Update the parameter files (`deploy.bicepparam` or `extend.bicepparam`) to customize the following:
- **`deployEnvironment`**: Specifies the environment (`dev` or `prd`).
- **`location`**: Specifies the Azure region (default: `westeurope`).
- **`appName`**: Specifies the application name.

---

## **Post-Deployment**
After deployment:
1. Verify the resources in the Azure portal.
2. If monitoring is enabled, check Application Insights and Log Analytics Workspace for telemetry and logs.

---

## **Notes**
- The deployment adheres to Azure best practices, including secure access, monitoring, and HTTPS-only communication.
- Ensure you have the necessary permissions to create resources in the specified subscription.

For more details, refer to the [Azure Bicep Documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/).

---