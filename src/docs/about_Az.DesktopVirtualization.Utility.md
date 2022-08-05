# Az.DesktopVirtualization.Utility
## about_Az.DesktopVirtualization.Utility

# SHORT DESCRIPTION

An `Az.DesktopVirtualization.Utility` module comprises utility cmdlets for administrators to 
configure or troubleshoot Azure Virtual Desktop environment.

# LONG DESCRIPTION

`Az.DesktopVirtualization.Utility` provides additional cmdlets for administrators to:
  - Perform troubleshooting in command line
  - Simplify configuration validation
  - Incorporate with other PowerShell modules

# EXAMPLES

The following statement will install the module.

```powershell
Install-Module -Name Az.DesktopVirtualization.Utility
```

The following statement will list all the available cmdlet for this module.

```powershell
Get-Command -Module Az.DesktopVirtualization.Utility
```

The following statement will render all the cmdlets full helps including examples.

```powershell
Get-Command -Module Az.DesktopVirtualization.Utility | Get-Help -Full
```

# NOTE

Author: Ryen Kia Zhi Tang

    Modified date: 2022-08-01

# SEE ALSO

- [Error: Azure Virtual Desktop agent isn't reporting a heartbeat when running Get-AzWvdSessionHost](https://docs.microsoft.com/en-us/azure/virtual-desktop/troubleshoot-vm-configuration#error-azure-virtual-desktop-agent-isnt-reporting-a-heartbeat-when-running-get-azwvdsessionhost)
- [Error: Agent cannot connect to broker with INVALID_FORM](https://docs.microsoft.com/en-us/azure/virtual-desktop/troubleshoot-agent#error-agent-cannot-connect-to-broker-with-invalid_form)

# KEYWORDS

- Azure
- AzureVirtualDesktop
- AVD
- WindowsVirtualDesktop
- WVD
- DesktopVirtualization
- Utility
- AzurePowerShell
