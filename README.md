# raspi4-armv7l-r0uei 
## Overview
**raspi4-armv7l-r0uei** is a vulnerable application for armv7l Raspberry Pi 4.

## Setup
### Raspberry Pi4
1. install docker
```
curl -sSL https://get.docker.com | sh
```

2. upgrade package `libseccomp`
```
cd ~/Downloads
wget http://ftp.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.4-1+b2_armhf.deb
sudo dpkg -i libseccomp2_2.5.4-1+b2_armhf.deb 
```

### application
Execute the following commands for launching the web application.
```
git clone https://github.com/ZeiJacks/raspi4-armv7l-r0uei.git
cd r0uei
make up
```

If you wanted clean this application (clean database etc), you run the following command.
```
make clean
```

## LICENSE
the Apache License, Version2.0.

## Author
yu1hpa
