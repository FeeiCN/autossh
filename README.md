# AutoSSH
Auto Login SSH Server (expect-based)

# Install Dependencies
```
Linux
yum install expect
apt-get install expect
```

# Install AutoSSH

```
$ git clone https://github.com/FeeiCN/autossh.git
$ sudo cp autossh/autossh /usr/local/bin/
```

# Config

```bash
$ cat ~/.autosshrc
server_name|192.168.1.110|root|password|port|is_bastion
```

# Example
```bash
$ cat ~/.autosshrc
wufeifei|192.168.1.1|root|password|22|1
```


# Usage

```
$ autossh
############################################################
#                     [AUTO SSH]                           #
#                                                          #
#                                                          #
# [1] 192.168.1.110:feei                                   #
# [2] 10.11.2.103:root                                     #
# [3] 103.21.140.84:root                                   #
#                                                          #
#                                                          #
############################################################
Server Number:(Input Server Num)
```

OR

```
$ autossh 1
```

OR Auto Sudo

```
$ autossh 3 sudo
```

OR Bastion Host

```
$ autossh 1 10.12.0.123
```

OR Auto Sudo With Bastion(JumpServer)

```
$ autossh 1 10.11.0.123 sudo
```
