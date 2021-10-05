# Ubuntu kernel setting

## Check pid limit
`cat /proc/sys/kernel/pid_max`

## Set pid limit
`sysctl -w kernel.pid_max={pid limit number}` 
