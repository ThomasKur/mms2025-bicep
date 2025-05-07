param($Timer)
# Output the current date and time to the console, indicating when the script is run
Write-Output "PowerShell Timer trigger function executed at: $(Get-Date)"

Connect-AzAccount -Identity -AccountId $env:AZURE_CLIENT_ID

Get-AzContext
Write-Output "PowerShell Timer trigger function execution ended at: $(Get-Date)"