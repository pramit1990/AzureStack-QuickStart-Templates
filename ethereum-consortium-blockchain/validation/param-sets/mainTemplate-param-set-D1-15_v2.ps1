# Params for mainTemplate.json
echo "Loading VM size parameter set for mainTemplate.json"

# Plese define the following variables in your personal automated-validation script
#$location       = <SET TO DESIRED AZURE REGION>;
#$baseUrl        = <SET TO BASE FOLDER LOCATION OF TEMPLTE FILE>;
#$authType       = <SET TO EITHER password or sshPublicKey>;
#$vmAdminPasswd  = <SET TO DESIRED PASSWORD>;
#$ethPasswd      = <SET TO DESIRED PASSWORD>;
#$passphrase     = <SET TO DESIRED PASSPHRASE>;
#$sshPublicKey   = <SET TO YOUR SSH PUBLIC KEY>;

# Some overridable defaults
if ([string]::IsNullOrEmpty($location))
{ $location = "centralus"; }

if (!$networkID)
{ $networkID = 10101; }

if ([string]::IsNullOrEmpty($authType))
{ $authType = "password"; }

$paramSet = @{
  "Tiny-Standard_D1_v2_D2_v2" = @{
    "namePrefix"                = "ethnet"
    "authType"                  = $authType
    "adminUsername"             = "gethadmin"
    "adminPassword"             = $vmAdminPasswd
    "adminSSHKey"               = $sshPublicKey
    "ethereumAccountPsswd"      = $ethPasswd
    "ethereumAccountPassphrase" = $passphrase
    "ethereumNetworkID"         = $networkID
    "numConsortiumMembers"      = 2
    "numMiningNodesPerMember"   = 1
    "mnNodeVMSize"              = "Standard_D1_v2"
    "mnStorageAccountType"      = "Standard_LRS"
    "numTXNodes"                = 1
    "txNodeVMSize"              = "Standard_D2_v2"
    "txStorageAccountType"      = "Standard_LRS"
    "location"                  = $location
    "baseUrl"                   = $baseUrl
  };
  "Tiny-Standard_D3_v2_D4_v2" = @{
    "namePrefix"                = "ethnet"
    "authType"                  = $authType
    "adminUsername"             = "gethadmin"
    "adminPassword"             = $vmAdminPasswd
    "adminSSHKey"               = $sshPublicKey
    "ethereumAccountPsswd"      = $ethPasswd
    "ethereumAccountPassphrase" = $passphrase
    "ethereumNetworkID"         = $networkID
    "numConsortiumMembers"      = 2
    "numMiningNodesPerMember"   = 1
    "mnNodeVMSize"              = "Standard_D3_v2"
    "mnStorageAccountType"      = "Standard_LRS"
    "numTXNodes"                = 1
    "txNodeVMSize"              = "Standard_D4_v2"
    "txStorageAccountType"      = "Standard_LRS"
    "location"                  = $location
    "baseUrl"                   = $baseUrl
  };
  "Tiny-Standard_D5_v2_D11_v2" = @{
    "namePrefix"                = "ethnet"
    "authType"                  = $authType
    "adminUsername"             = "gethadmin"
    "adminPassword"             = $vmAdminPasswd
    "adminSSHKey"               = $sshPublicKey
    "ethereumAccountPsswd"      = $ethPasswd
    "ethereumAccountPassphrase" = $passphrase
    "ethereumNetworkID"         = $networkID
    "numConsortiumMembers"      = 2
    "numMiningNodesPerMember"   = 1
    "mnNodeVMSize"              = "Standard_D5_v2"
    "mnStorageAccountType"      = "Standard_LRS"
    "numTXNodes"                = 1
    "txNodeVMSize"              = "Standard_D11_v2"
    "txStorageAccountType"      = "Standard_LRS"
    "location"                  = $location
    "baseUrl"                   = $baseUrl
  };
  "Tiny-Standard_D12_v2_D13_v2" = @{
    "namePrefix"                = "ethnet"
    "authType"                  = $authType
    "adminUsername"             = "gethadmin"
    "adminPassword"             = $vmAdminPasswd
    "adminSSHKey"               = $sshPublicKey
    "ethereumAccountPsswd"      = $ethPasswd
    "ethereumAccountPassphrase" = $passphrase
    "ethereumNetworkID"         = $networkID
    "numConsortiumMembers"      = 2
    "numMiningNodesPerMember"   = 1
    "mnNodeVMSize"              = "Standard_D12_v2"
    "mnStorageAccountType"      = "Standard_LRS"
    "numTXNodes"                = 1
    "txNodeVMSize"              = "Standard_D13_v2"
    "txStorageAccountType"      = "Standard_LRS"
    "location"                  = $location
    "baseUrl"                   = $baseUrl
  };
  "Tiny-Standard_D14_v2_D15_v2" = @{
    "namePrefix"                = "ethnet"
    "authType"                  = $authType
    "adminUsername"             = "gethadmin"
    "adminPassword"             = $vmAdminPasswd
    "adminSSHKey"               = $sshPublicKey
    "ethereumAccountPsswd"      = $ethPasswd
    "ethereumAccountPassphrase" = $passphrase
    "ethereumNetworkID"         = $networkID
    "numConsortiumMembers"      = 2
    "numMiningNodesPerMember"   = 1
    "mnNodeVMSize"              = "Standard_D14_v2"
    "mnStorageAccountType"      = "Standard_LRS"
    "numTXNodes"                = 1
    "txNodeVMSize"              = "Standard_D15_v2"
    "txStorageAccountType"      = "Standard_LRS"
    "location"                  = $location
    "baseUrl"                   = $baseUrl
  }
};