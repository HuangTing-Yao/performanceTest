# Ubuntu kernel setting
You need make sure that number of max user processes is larger than pid limit.

## Check and set number of max user processes and open files
1. Use `ulimit -u -n` to check.
2. If you want to increase them, edit `/etc/security/limits.conf`, add followings.

``` 
#change max process limitm number2 >= number1
* nproc soft nproc ${number1}
* nproc hard nproc ${number2} 
root nproc soft nproc ${number1}
root nproc hard nproc ${number2}
#change opening files same time
* nproc soft nofile ${number1}
* nproc hard nofile ${number2}   
root nproc soft nofile ${number1}
root nproc hard nofile ${number2}
```

## Check and set pid limit
1. Use `cat /proc/sys/kernel/pid_max` command to show pid limit.
2. If you want to increase pid limit, use `sysctl -w kernel.pid_max={pid limit number}` command to set it up.
