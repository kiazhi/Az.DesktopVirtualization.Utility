---
external help file:
Module Name: Az.DesktopVirtualization.Utility
online version:
schema: 2.0.0
---

# Get-AzWvdSessionHostRDBrokerHealth

## SYNOPSIS

Gets the RDBroker services health from the session host.

## SYNTAX

```
Get-AzWvdSessionHostRDBrokerHealth [-Check <String>] [-HealthReport] [-Raw] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION

The `Get-AzWvdSessionHostRDBrokerHealth` cmdlet utilises the Uri value in the registry key to
perform the health check request with the RDBroker.

## EXAMPLES

### Example 1: Get all RDBroker health from session host

```powershell
PS C:\> Get-AzWvdSessionHostRDBrokerHealth
```

```output
Health            : RDBroker is Healthy
HealthCheckStatus : @{HealthReport=; SnapshotTimeUtc=2022-07-28T08:23:15.10346Z; CurrentCapacityLoad=0}
TimeStamp         : 2022-07-28T08:23:38.1069754+00:00
TimeStampUtc      : 2022-07-28T08:23:38.1069765Z
UpTime            : 4.01:14:02.3854535
Version           : 1.0.5388.700
GlobalUrl         : https://rdbroker.wvd.microsoft.com/
RingUrl           : https://rdbroker-r0.wvd.microsoft.com/
RegionUrl         : https://rdbroker-cus-r0.wvd.microsoft.com/
ClusterUrl        : https://rdbroker-c101-cus-r0.wvd.microsoft.com/

Health            : RDBroker is Healthy
HealthCheckStatus : @{HealthReport=; SnapshotTimeUtc=2022-07-28T08:23:08.5394076Z; CurrentCapacityLoad=0}
TimeStamp         : 2022-07-28T08:23:38.6078491+00:00
TimeStampUtc      : 2022-07-28T08:23:38.6078497Z
UpTime            : 1.09:03:04.3297695
Version           : 1.0.5100.1100
GlobalUrl         : https://rdbroker.wvd.microsoft.com/
RingUrl           : https://rdbroker-r1.wvd.microsoft.com/
RegionUrl         : https://rdbroker-jpw-r1.wvd.microsoft.com/
ClusterUrl        : https://rdbroker-c102-jpw-r1.wvd.microsoft.com/

Health            : RDDiagnostics is Healthy
HealthCheckStatus : @{HealthReport=; SnapshotTimeUtc=2022-07-28T08:23:12.5380209Z; CurrentCapacityLoad=0}
TimeStamp         : 2022-07-28T08:23:39.475994+00:00
TimeStampUtc      : 2022-07-28T08:23:39.4759948Z
UpTime            : 4.01:57:32.5184926
Version           : 1.0.5388.700
GlobalUrl         : https://rddiagnostics.wvd.microsoft.com/
RingUrl           : https://rddiagnostics-r0.wvd.microsoft.com/
RegionUrl         : https://rddiagnostics-cus-r0.wvd.microsoft.com/
ClusterUrl        : https://rddiagnostics-c100-cus-r0.wvd.microsoft.com/
```

This command gets all of the RDBroker health on the session host. The default display shows the
`Health`, `HealthCheckStatus`, and other information of the service.


### Example 2: Get primary RDBroker health from the session host

```powershell
PS C:\> Get-AzWvdSessionHostRDBrokerHealth -Check BrokerURI
```

```output
Health            : RDBroker is Healthy
HealthCheckStatus : @{HealthReport=; SnapshotTimeUtc=2022-07-28T08:35:46.123737Z; CurrentCapacityLoad=0}
TimeStamp         : 2022-07-28T08:35:49.4943477+00:00
TimeStampUtc      : 2022-07-28T08:35:49.4943484Z
UpTime            : 4.01:26:30.8577469
Version           : 1.0.5388.700
GlobalUrl         : https://rdbroker.wvd.microsoft.com/
RingUrl           : https://rdbroker-r0.wvd.microsoft.com/
RegionUrl         : https://rdbroker-cus-r0.wvd.microsoft.com/
ClusterUrl        : https://rdbroker-c101-cus-r0.wvd.microsoft.com/
```

`Get-AzWvdSessionHostRDBrokerHealth` uses `-Check` parameter with the `BrokerURI` option to
request the health from the specific URI configured on the session host registry.


### Example 3: Get global RDBroker health from the session host

```powershell
PS C:\> Get-AzWvdSessionHostRDBrokerHealth -Check BrokerURIGlobal
```

```output
Health            : RDBroker is Healthy
HealthCheckStatus : @{HealthReport=; SnapshotTimeUtc=2022-07-28T08:42:04.1191563Z; CurrentCapacityLoad=0}
TimeStamp         : 2022-07-28T08:42:05.9463273+00:00
TimeStampUtc      : 2022-07-28T08:42:05.9463284Z
UpTime            : 1.09:21:36.3561819
Version           : 1.0.5100.1100
GlobalUrl         : https://rdbroker.wvd.microsoft.com/
RingUrl           : https://rdbroker-r1.wvd.microsoft.com/
RegionUrl         : https://rdbroker-jpw-r1.wvd.microsoft.com/     
ClusterUrl        : https://rdbroker-c102-jpw-r1.wvd.microsoft.com/
```

`Get-AzWvdSessionHostRDBrokerHealth` uses `-Check` parameter with the `BrokerURIGlobal` option to
request the health from the specific URI configured on the session host registry.


### Example 4: Get RDBroker diagnostics health from the session host

```powershell
PS C:\> Get-AzWvdSessionHostRDBrokerHealth -Check DiagnosticsURI
```

```output
Health            : RDDiagnostics is Healthy
HealthCheckStatus : @{HealthReport=; SnapshotTimeUtc=2022-07-28T08:44:58.0502562Z; CurrentCapacityLoad=0}
TimeStamp         : 2022-07-28T08:45:01.4663518+00:00
TimeStampUtc      : 2022-07-28T08:45:01.4663529Z
UpTime            : 4.01:36:06.1519937
Version           : 1.0.5388.700
GlobalUrl         : https://rddiagnostics.wvd.microsoft.com/
RingUrl           : https://rddiagnostics-r0.wvd.microsoft.com/
RegionUrl         : https://rddiagnostics-cus-r0.wvd.microsoft.com/
ClusterUrl        : https://rddiagnostics-c101-cus-r0.wvd.microsoft.com/
```

`Get-AzWvdSessionHostRDBrokerHealth` uses `-Check` parameter with the `DiagnosticsURI` option to
request the health from the specific URI configured on the session host registry.


### Example 5: Get RDBroker individual health report entries from session host

```powershell
PS C:\> Get-AzWvdSessionHostRDBrokerHealth -Check DiagnosticsURI -HealthReport
```

```output
HealthReport : DiagnosticsURI - rdAADContext
Data         : @{x-ms-correlation-id=ea60495f-6602-42bb-9ffd-c131089abf4a; RDHealthCheck:Operation=CheckAADHealth}
Description  :
Duration     : 00:00:00.0005946
Exception    :
Status       : 2
Tags         : {}

HealthReport : DiagnosticsURI - rdDbContext
Data         :
Description  :
Duration     : 00:00:00.0298734
Exception    : 
Status       : 2
Tags         : {}

HealthReport : DiagnosticsURI - rdRedisCacheContext
Data         : @{x-ms-correlation-id=ea60495f-6602-42bb-9ffd-c131089abf4a; RDHealthCheck:Operation=CheckRedisCacheHealth}
Description  :
Duration     : 00:00:00.0026510
Exception    :
Status       : 2
Tags         : {}
...            ...
```

`Get-AzWvdSessionHostRDBrokerHealth` uses `-HealthReport` parameter to return all the health report
entries from the RDBroker service response.


### Example 6: Get RDBroker health raw JSON response from session host

```powershell
PS C:\> Get-AzWvdSessionHostRDBrokerHealth -Check BrokerURI -Raw
```

```output
{
  "Health": "RDBroker is Healthy",
  "HealthCheckStatus": {
    "HealthReport": {
      "Entries": {
        "rdDbContext": {
          "Data": {},
          "Description": null,
          "Duration": "00:00:00.0350346",
          "Exception": null,
          "Status": 2,
          "Tags": []
        },
        "rdAADContext": {
          "Data": {
            "x-ms-correlation-id": "af615fbd-c8be-414b-b85d-f81a5a1ca031",
            "RDHealthCheck:Operation": "CheckAADHealth"
          },
          "Description": null,
          "Duration": "00:00:00.0006769",
          "Exception": null,
          "Status": 2,
          "Tags": []
        },
...
      }
    }
  }
}
```

`Get-AzWvdSessionHostRDBrokerHealth` uses `-Raw` parameter to output the raw `JSON` response
from RDBroker service.

## PARAMETERS

### -Check
Specifies the type of health check against the RDBroker URI that is configured in your session host
registry key `BrokerURI`, `BrokerURIGlobal` and `DiagnosticsURI` value.

```yaml
Type: String
Parameter Sets: (All)
Aliases: C
Accepted values: BrokerURI, BrokerURIGlobal, DiagnosticsURI

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -HealthReport
The HealthReport parameter returns a Boolean value in a System.Boolean object. Using this parameter will
output each health report entry for the RDBroker health.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: R, Report

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Raw
The Raw parameter returns a Boolean value in a System.Boolean object. Using this parameter will
output raw `JSON` response.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### System.Management.Automation.SwitchParameter

## OUTPUTS

### System.Object

## NOTES

Author: Ryen Kia Zhi Tang

Modified date: 2022-08-01

## RELATED LINKS

[Topic on "Error: Agent cannot connect to broker with INVALID_FORM"](https://docs.microsoft.com/en-us/azure/virtual-desktop/troubleshoot-agent#error-agent-cannot-connect-to-broker-with-invalid_form)
