---
external help file:
Module Name: Az.DesktopVirtualization.Utility
online version:
schema: 2.0.0
---

# Test-AzWvdRDBrokerLatency

## SYNOPSIS

Sends TCP echo request packets to RDBroker service uri to test connectivity and measure latency.

## SYNTAX

```
Test-AzWvdRDBrokerLatency [[-Uri] <Uri>] [[-Port] <Int16>] [[-NumberOfWarmUpPing] <Int16>]
 [[-NumberOfPing] <Int16>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

The `Test-AzWvdRDBrokerLatency` cmdlet sends TCP echo request packets to RDBroker service uri and
returns the echo response replies. You can use this cmdlet to determine whether a particular
computer can contact the RDBroker service uri on a specific port across an IP network.

You can use the parameters of `Test-AzWvdRDBrokerLatency` to specify the `-Port` port number to test
if Port 443 is open and the `-NumberOfPing` to send a number of echo requests to the destination to
measure the latency between the local computer to the destination.

## EXAMPLES

### Example 1: Send echo requests to RDBroker service

This example sends echo request packets from the local computer to the RDBroker service.

```powershell
PS C:\> Test-AzWvdRDBrokerLatency -Uri rdbroker.wvdselfhost.microsoft.com -Port 80
```

```output
DestinationUri         : rdbroker.wvdselfhost.microsoft.com
DestinationDnsHostName : rdbroker.wvdselfhost.microsoft.com
DestinationIPAddress   : 138.91.29.183
DestinationPort        : 80
Entries                : {@{Index=0; DestinationUri=rdbroker.wvdselfhost.microsoft.com; DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=138.91.29.183; DestinationPort=80; 
                         SourceIPAddress=::ffff:10.10.0.138; SourcePort=51106; Status=Reachable; Latency(ms)=90.717}, @{Index=1; DestinationUri=rdbroker.wvdselfhost.microsoft.com; 
                         DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=138.91.29.183; DestinationPort=80; SourceIPAddress=::ffff:10.10.0.138; SourcePort=51110; Status=Reachable; Latency(ms)=85.864}, 
                         @{Index=2; DestinationUri=rdbroker.wvdselfhost.microsoft.com; DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=138.91.29.183; DestinationPort=80; 
                         SourceIPAddress=::ffff:10.10.0.138; SourcePort=51112; Status=Reachable; Latency(ms)=85.982}, @{Index=3; DestinationUri=rdbroker.wvdselfhost.microsoft.com; 
                         DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=138.91.29.183; DestinationPort=80; SourceIPAddress=::ffff:10.10.0.138; SourcePort=51115; Status=Reachable; Latency(ms)=87.819}}
Sent                   : 4
Received               : 4
Lost                   : 0
LossPercentage%        : 0.000%
MinimumLatency(ms)     : 85.864
MaximumLatency(ms)     : 90.717
AverageLatency(ms)     : 87.5955
SumLatency(ms)         : 350.382
```

`Test-AzWvdRDBrokerLatency` uses the `-Uri` parameter to specify the RDBroker URL destination and the
`-Port` parameter to specify the RDBroker listening port number.

### Example 2: Send echo requests to RDBroker service with verbose outputs

This example sends echo request packets from the local computer to the RDBroker service and
displays verbose output of the activities.

```powershell
PS C:\> Test-AzWvdRDBrokerLatency -Uri https://rdbroker.wvdselfhost.microsoft.com/ -Port 443 -Verbose
```

```output
VERBOSE: TCP connect to 23.100.108.163 (rdbroker.wvdselfhost.microsoft.com):443:
VERBOSE: 5 iterations (warmup 1) ping test:
VERBOSE: Connecting to (rdbroker.wvdselfhost.microsoft.com) 23.100.108.163:443 (warmup): from ::ffff:10.10.0.138:64661: 90.489ms
VERBOSE: Connecting to (rdbroker.wvdselfhost.microsoft.com) 23.100.108.163:443: from ::ffff:10.10.0.138:64665: 88.542ms
VERBOSE: Connecting to (rdbroker.wvdselfhost.microsoft.com) 23.100.108.163:443: from ::ffff:10.10.0.138:64668: 87.386ms
VERBOSE: Connecting to (rdbroker.wvdselfhost.microsoft.com) 23.100.108.163:443: from ::ffff:10.10.0.138:64670: 88.799ms
VERBOSE: Connecting to (rdbroker.wvdselfhost.microsoft.com) 23.100.108.163:443: from ::ffff:10.10.0.138:64673: 90.159ms
VERBOSE: TCP connect statistics for (https://rdbroker.wvdselfhost.microsoft.com/) 23.100.108.163:443:
VERBOSE: Sent = 4, Received = 4, Lost = 0 (0.000%% loss),
VERBOSE: Minimum = 87.386ms, Maximum = 90.159ms, Average = 88.72149999999999ms, Sum = 354.88599999999997ms

DestinationUri         : https://rdbroker.wvdselfhost.microsoft.com/
DestinationDnsHostName : rdbroker.wvdselfhost.microsoft.com
DestinationIPAddress   : 23.100.108.163
DestinationPort        : 443
Entries                : {@{Index=0; DestinationUri=https://rdbroker.wvdselfhost.microsoft.com/; DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; DestinationPort=443; 
                         SourceIPAddress=::ffff:10.10.0.138; SourcePort=64665; Status=Reachable; Latency(ms)=88.542}, @{Index=1; DestinationUri=https://rdbroker.wvdselfhost.microsoft.com/; 
                         DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; DestinationPort=443; SourceIPAddress=::ffff:10.10.0.138; SourcePort=64668; Status=Reachable; 
                         Latency(ms)=87.386}, @{Index=2; DestinationUri=https://rdbroker.wvdselfhost.microsoft.com/; DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; 
                         DestinationPort=443; SourceIPAddress=::ffff:10.10.0.138; SourcePort=64670; Status=Reachable; Latency(ms)=88.799}, @{Index=3; DestinationUri=https://rdbroker.wvdselfhost.microsoft.com/; 
                         DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; DestinationPort=443; SourceIPAddress=::ffff:10.10.0.138; SourcePort=64673; Status=Reachable; 
                         Latency(ms)=90.159}}
Sent                   : 4
Received               : 4
Lost                   : 0
LossPercentage%        : 0.000%
MinimumLatency(ms)     : 87.386
MaximumLatency(ms)     : 90.159
AverageLatency(ms)     : 88.7215
SumLatency(ms)         : 354.886
```

`Test-AzWvdRDBrokerLatency` uses `-Verbose` parameter to provide verbose output of the activities
similar to `psping`.

### Example 3: Send 5 warm up echo requests prior sending 10 echo requests to RDBroker service to measure the latency

This example sends 5 echo request packets as a warm up activities from the local computer to the
RDBroker service before sending 10 echo requests to measure the latency between the local computer
with the RDBroker service.

```powershell
PS C:\> Test-AzWvdRDBrokerLatency -Uri rdbroker.wvdselfhost.microsoft.com -Port 443 -NumberOfWarmUpPing 0 -NumberOfPing 10
```

```output
DestinationUri         : rdbroker.wvdselfhost.microsoft.com
DestinationDnsHostName : rdbroker.wvdselfhost.microsoft.com
DestinationIPAddress   : 23.100.108.163
DestinationPort        : 443
Entries                : {@{Index=0; DestinationUri=rdbroker.wvdselfhost.microsoft.com; DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; DestinationPort=443; 
                         SourceIPAddress=::ffff:10.10.0.138; SourcePort=58314; Status=Reachable; Latency(ms)=87.87}, @{Index=1; DestinationUri=rdbroker.wvdselfhost.microsoft.com; 
                         DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; DestinationPort=443; SourceIPAddress=::ffff:10.10.0.138; SourcePort=58317; Status=Reachable; 
                         Latency(ms)=93.478}, @{Index=2; DestinationUri=rdbroker.wvdselfhost.microsoft.com; DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; DestinationPort=443; 
                         SourceIPAddress=::ffff:10.10.0.138; SourcePort=58321; Status=Reachable; Latency(ms)=87.915}, @{Index=3; DestinationUri=rdbroker.wvdselfhost.microsoft.com; 
                         DestinationDnsHostName=rdbroker.wvdselfhost.microsoft.com; DestinationIPAddress=23.100.108.163; DestinationPort=443; SourceIPAddress=::ffff:10.10.0.138; SourcePort=58323; Status=Reachable; 
                         Latency(ms)=88.33}…}
Sent                   : 10
Received               : 10
Lost                   : 0
LossPercentage%        : 0.000%
MinimumLatency(ms)     : 86.446
MaximumLatency(ms)     : 93.478
AverageLatency(ms)     : 89.0097
SumLatency(ms)         : 890.097
```

`Test-AzWvdRDBrokerLatency` uses `-NumberOfWarmUpPing` parameter to specify a range from 0 to 5 warm
up echo requests before sending 10 echo requests to the RDBroker service.

To skip warm up echo request, user can specify a value of 0 `-NumberOfWarmUpPing 0` to skip warm up
echo request.

To increase the number of echo requests (Default: 4) to 10 echo requests, user can specify a value
of 10 `-NumberOfPing 10` to increase the number of echo requests during the test.

### Example 4: Send 10 echo requests to RDBroker service and view details of each echo request

```powershell
PS C:\> Test-AzWvdRDBrokerLatency -Uri rdbroker.wvdselfhost.microsoft.com -Port 443 -NumberOfPing 10 | Select-Object -ExpandProperty Entries | Format-Table
```

```powershell
Index DestinationUri                              DestinationDnsHostName             DestinationIPAddress DestinationPort SourceIPAddress    SourcePort Status      Latency(ms)
----- --------------                              ----------------------             -------------------- --------------- ---------------    ---------- ------      -----------
    0 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56948 Reachable        85.903
    1 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56951 UnReachable            
    2 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56953 Reachable        87.151
    3 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56956 Reachable        87.399
    4 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56959 Reachable        87.709
    5 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56961 UnReachable            
    6 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56965 Reachable        90.804
    7 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56966 Reachable        86.924
    8 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56971 Reachable         87.67
    9 https://rdbroker.wvdselfhost.microsoft.com/ rdbroker.wvdselfhost.microsoft.com 23.100.108.163                   443 ::ffff:10.10.0.138      56974 Reachable        86.583
```

`Test-AzWvdRDBrokerLatency` supports pipeline output of the `PSObject`. User can expand the `Entries`
property and view each echo request activity information.

## PARAMETERS

### -NumberOfPing
Specifies the number of echo requests to send. The default value is 4.

```yaml
Type: Int16
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -NumberOfWarmUpPing
Specifies the number of warm up echo requests to send. The default value is 1.

```yaml
Type: Int16
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Port
Specifies the port number for the destination.

```yaml
Type: Int16
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Uri
Specifies the Uri of the destination.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
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

### System.Uri
### System.Int16

## OUTPUTS

### System.Object

## NOTES

Author: Ryen Kia Zhi Tang

Modified date: 2022-08-01

## RELATED LINKS

[Topic on "Error: Azure Virtual Desktop agent isn't reporting a heartbeat when running Get-AzWvdSessionHost"](https://docs.microsoft.com/en-us/azure/virtual-desktop/troubleshoot-vm-configuration#error-azure-virtual-desktop-agent-isnt-reporting-a-heartbeat-when-running-get-azwvdsessionhost)
