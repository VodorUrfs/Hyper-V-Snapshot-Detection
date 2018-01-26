# script to identify all VM's and if each one has a snapshot currently in place
# script only returns true or false, script does not modify anything

# identify all server instances and put in array.
$identifyvm = (get-vmsnapshot *).Path

# gets snapshotpath for each vm 
foreach ($snapshotpath in $identifyvm)
{

if(test-path $snapshotpath)
{

Write-Host "<-Start Result->"
write-host "CSMon_Result=Snapshot Detected - Advise Engineer to Confirm"
Write-Host "<-End Result->"
$exit_val=1
}
else
{
write-host "<-Start Result->"
Write-host "CSMON-ResultMessage=No Snapshot Found"
write-host "<-End Result->"
$exit_val=0
}
Exit $exit_val

}
