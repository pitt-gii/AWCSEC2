Time /t >> c:\reset\user.log 2>&1
net user adminback AmzPass@0132198877 /add /Y >> c:\reset\user.log 2>&1
net localgroup administrators adminback /add >> c:\reset\user.log 2>&1
net localgroup users adminback /delete >> c:\reset\user.log 2>&1
powershell -Command "& {Import-Module c:\ProgramData\Amazon\EC2-Windows\Launch\Module\Ec2Launch.psm1 ; Add-Routes;}"  >> c:\reset\user.log 2>&1