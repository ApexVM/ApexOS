# ApexOS
Easy to use, open source, APT-based Linux operating system (WIP)

### OS compatibility
ApexOS supports all APT-based systems starting from 2018 ones up to 2024 ones!

Minimum system requirements: Ubuntu 18.04, Debian 9

Recommended system requirements: Ubuntu 22.04, Debian 12

### Device requirements
You only need 512 megabytes of RAM to run ApexOS base! But to run desktop environments (yes, they are modded too) you need 2048 megabytes of RAM. 

### Running it on VM
ApexOS is cross-platform system and a disk image... But where? Of course only in ApexVM as we control those systems and it is just a copy of ApexOS container running in Proot systems so no! It isn't even running as container on AMD64 systems.

If you want to try ApexOS in **VM** environment, you need to run installer in VM mode. Then let it do its magic and reboot your VM.

**WARNING: Containers ARE NOT VMs, running VM mode in Proot or Chroot will cause the system to break or even unwanted changes to your host system! Please DO NOT run VM mode in Chroot, Proot and your real devices. ApexOS installer detects if your system runs on Proot, Chroot, real device or VM.**

### Installing ApexOS on containers (Proot, Chroot)
Currently you can install ApexOS on any container as if it was our instance. ApexOS installer edits some system files so if your VPS provider can see logs, you better don't install it.

**WARNING: We are not responsible for any data loss, account ban etc by using ApexOS on containers, this also includes other projects (Apex Minecraft server) and bypassing system security.**

### Installing packages
To install packages on Debian or Ubuntu we use APT right? Yes, we use APT.

In ApexOS, we created "vpkg" (which stands for virtual package manager) that allows you to install your favourite APT packages to your system!

Examples:
```
vpkg --install package
```
It will install the package to your system
```
vpkg --remove package
```
It will remove the package from your system
```
vpkg --flash package.deb
```
This command flashes the package.deb to your system. 

**WARNING: Flashing untrusted packages may render your system unstable or you may install viruses! Please verify source of package. (however Linux doesn't have malware...)**

### Contributing
Please ask staff on Apex VM discord or telegram please. I'm only here to create this system and provide support :)
