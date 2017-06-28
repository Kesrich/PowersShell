Import-Module MSOnline
$O365Cred = Get-Credential

#use account kstevens-cl@carmax.com

$proxysettings = New-PSSessionOption -ProxyAccessType IEConfig
$O365Session = New-PSSession –ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential $O365Cred -Authentication Basic -AllowRedirection -SessionOption $proxysettings
Import-PSSession $O365Session -AllowClobber
Connect-MsolService –Credential $O365Cred 

#run a get-mailbox of someone else to verify you connected!
get-mailbox jseaborne-cl@carmax.com

#disconnect PS-Session (copy and paste it to command line to execute to kill session...)
#Remove-PSSession $O365Session