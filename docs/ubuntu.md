# Ubuntu kernel setting
You need make sure that number of max user processes is larger than pid limit.

## Check and set number of max user processes and open files
1. Use `ulimit -u -n` to check.
2. If you want to increase them, edit `/etc/security/limits.conf`, add followings.

``` 
#change max process limitm number2 >= number1
* soft nproc ${number1}
* hard nproc ${number2} 
root soft nproc ${number1}
root hard nproc ${number2}
#change opening files same time
* soft nofile ${number1}
* hard nofile ${number2}   
root soft nofile ${number1}
root hard nofile ${number2}
```
## Check and set pid limit
Use `cat /proc/sys/{limit path}` command to show pid limit.

## modify kernal limits 
```
sudo sysctl -w kernel.pid_max={pid limit number}
sudo sysctl -w fs.inotify.max_user_instances=500000
sudo sysctl -w fs.inotify.max_user_watches=500000
```
