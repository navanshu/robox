## Website
https://roboxes.org  

## Vagrant Boxes  
https://app.vagrantup.com/generic  
https://app.vagrantup.com/lavabit  
https://app.vagrantup.com/lineage  

## Podman / Docker Images  
https://hub.docker.com/u/roboxes/  
https://hub.docker.com/u/lavabit/  
or   
https://quay.io/organization/roboxes  
https://quay.io/organization/lavabit  


## Adding Boxes

Submit a pull request with your favorite distro.  

## Building a Box

To build a Robox locally, run the following:  

```bash
git clone https://github.com/lavabit/robox && cd robox
./robox.sh box generic-BOX-PROVIDER
```

You will to replace the BOX and PROVIDER placeholders in the example above.  
  
Replace `BOX` with one of the these values:  `[alma8|alma9|alpine35|alpine36|alpine37|alpine38|alpine39|alpine310|alpine311|alpine312|alpine313|alpine314|alpine315|alpine316|alpine317|arch|centos6|centos7|centos8|centos8s|centos9s|debian8|debian9|debian10|debian11|devuan1|devuan2|devuan3|devuan4|dragonflybsd5|dragonflybsd6|fedora25|fedora26|fedora27|fedora28|fedora29|fedora30|fedora31|fedora32|fedora33|fedora34|fedora35|fedora36|fedora37|freebsd11|freebsd12|freebsd13|gentoo|hardenedbsd11|hardenedbsd12|hardenedbsd13|netbsd8|netbsd9|openbsd6|openbsd7|opensuse15|opensuse42|oracle7|oracle8|oracle8|rhel6|rhel7|rhel8|rocky8|rocky9|ubuntu1604|ubuntu1610|ubuntu1704|ubuntu1710|ubuntu1804|ubuntu1810|ubuntu1904|ubuntu1910|ubuntu2004|ubuntu2010|ubuntu2104|ubuntu2110|ubuntu2204|ubuntu2210]` 
  
And replace `PROVIDER` with one of these values: `[docker|hyperv|libvirt|parallels|virtualbox|vmware]`.  
  
A configuration for all of the distros is available for every provider, EXCEPT Docker. At present we have only adapted a subset of the configurations to build Docker/Podman images.  

The above presumes you already have [`packer`](https://www.packer.io/) and the hypervisor for the tartted provider installed. The `res/providers/providers.sh` script may provide guidance on the steps required to setup a Linux build host for VMWare/Virtualbox/Docker/libvirt. Please note that this scripts was written for RHEL/CentOS 7. You will then need to adapt the package names and CLI commands to your environment.  

## Donate
[Roboxes](https://roboxes.org)