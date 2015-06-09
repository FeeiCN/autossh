#!/usr/bin/expect -f

set timeout 30
set host "IP"
set t_login "login:"
set t_pass "password:"
set name "NAME"
set pass  "PASS\r"
set port "10022"
spawn ssh -p$port -l $name $host
expect "password:"  
send   $pass
interact
