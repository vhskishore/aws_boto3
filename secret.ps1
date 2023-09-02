# Import the Azure PowerShell module
Import-Module AzureAD

# Get the tenant ID
$tenantId = "d560ccf6-d51e-41aa-aa59-23245f28e3a4"

# Get the credentials
$credentials = Get-Credential

# Get the list of applications
$applications = Get-AzureADApplication -All:$true

# Loop through the applications
foreach ($application in $applications) {

    # Get the list of secrets
    $secrets = Get-AzureADApplicationKeyCredential -ObjectId $application.ObjectId

    # Loop through the secrets
    foreach ($secret in $secrets) {

        # Get the expiration date
        $expirationDate = $secret.EndDate

        # Print the secret name and expiration date
        Write-Host "Application name: $application.DisplayName"
        Write-Host "Secret name: $secret.SecretName"
        Write-Host "Expiration date: $expirationDate"
    }
}
