
variable "box_version" {
  type    = string
  default = "${env("VERSION")}"
}

source "hyperv-iso" "generic-alma8-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alma8.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:a4fc8c53878e09f63849f2357228db9e2b547beea6f2b47758da2995bd59356e"
  iso_url                          = "https://dfw.mirror.rackspace.com/almalinux/8.7/isos/x86_64/AlmaLinux-8.7-x86_64-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alma8-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alma8-hyperv"
}

source "hyperv-iso" "generic-alma9-hyperv" {
  boot_command                     = ["<tab> net.ifnames=0 inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alma9.vagrant.ks vga=792 <enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:9f22bd98c8930b1d0b2198ddd273c6647c09298e10a0167197a3f8c293d03090"
  iso_url                          = "https://dfw.mirror.rackspace.com/almalinux/9.1/isos/x86_64/AlmaLinux-9.1-x86_64-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alma9-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alma9-hyperv"
}

source "hyperv-iso" "generic-alpine310-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine310.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine310.vagrant.cfg ; ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:f4e6973b61f37c445bafd99f3beecabc9a68a56b17014297b1505d35faae85fb"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.10/releases/x86_64/alpine-virt-3.10.9-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine310-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine310-hyperv"
}

source "hyperv-iso" "generic-alpine311-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine311.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine311.vagrant.cfg ; ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:7a7038e5b3646aaf151ee8375ddee42408379275d2c11b413931e4e1b597be7e"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.11/releases/x86_64/alpine-virt-3.11.13-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine311-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine311-hyperv"
}

source "hyperv-iso" "generic-alpine312-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine312.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine312.vagrant.cfg ; ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:f569f7a9d47c1310f4ec50155a479adf0e27c79239d981a33629b62fa4281b63"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.12/releases/x86_64/alpine-virt-3.12.12-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine312-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine312-hyperv"
}

source "hyperv-iso" "generic-alpine313-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine313.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine313.vagrant.cfg ; ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:a1d440fc78d9bc1796980fd37ed24e5b7b74149d21df3d34b0ec745fc8f25128"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.13/releases/x86_64/alpine-virt-3.13.12-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine313-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine313-hyperv"
}

source "hyperv-iso" "generic-alpine314-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine314.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine314.vagrant.cfg ; ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:2f46f2340ba82763e10984a56dd4bd9002f8cd12f45d617bb81a7597d2033250"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.14/releases/x86_64/alpine-virt-3.14.8-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine314-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine314-hyperv"
}

source "hyperv-iso" "generic-alpine315-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine315.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "source generic.alpine315.vagrant.cfg<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | sh /sbin/setup-alpine -f /root/generic.alpine315.vagrant.cfg && ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:ff0d9cf3acf52fa08aa90984e96f9504a60ed6b763d910152443b29eb689fd47"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.15/releases/x86_64/alpine-virt-3.15.6-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine315-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine315-hyperv"
}

source "hyperv-iso" "generic-alpine316-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine316.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "source generic.alpine316.vagrant.cfg<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | sh /sbin/setup-alpine -f /root/generic.alpine316.vagrant.cfg && ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:a90150589e493d5b7e87297056b6e124d8af1b91fa2eb92bab61a839839e287b"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.16/releases/x86_64/alpine-virt-3.16.3-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine316-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine316-hyperv"
}

source "hyperv-iso" "generic-alpine317-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine317.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "source generic.alpine317.vagrant.cfg<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | sh /sbin/setup-alpine -f /root/generic.alpine317.vagrant.cfg && ", "mount /dev/sda2 /mnt && ", "sed -E -i '/#? ?PasswordAuthentication/d' /mnt/etc/ssh/sshd_config && ", "sed -E -i '/#? ?PermitRootLogin/d' /mnt/etc/ssh/sshd_config && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:8d4d53bd34b2045e1e219b87887b0de8d217b6cd4a8b476a077429845a5582ba"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.17/releases/x86_64/alpine-virt-3.17.0-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine317-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine317-hyperv"
}

source "hyperv-iso" "generic-alpine35-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine35.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f generic.alpine35.vagrant.cfg ; ", "mount /dev/sda3 /mnt && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:3cca39f256f6a11d89a1c89a54982e9806d3df0fd785dc66ff26d3c670c3d648"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.5/releases/x86_64/alpine-vanilla-3.5.3-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine35-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine35-hyperv"
}

source "hyperv-iso" "generic-alpine36-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine36.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f generic.alpine36.vagrant.cfg ; ", "mount /dev/sda3 /mnt && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:b5936e27487e605ea3cbf040d444505ea7fd735021258d7b119faaa9b4b5b083"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.6/releases/x86_64/alpine-virt-3.6.5-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine36-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine36-hyperv"
}

source "hyperv-iso" "generic-alpine37-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine37.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine37.vagrant.cfg ; ", "mount /dev/sda3 /mnt && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:2f7a23fc31a6f67348e5614597b23ab8d9340e8a0f4368e96797b1a6c65fa6b8"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.7/releases/x86_64/alpine-virt-3.7.3-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine37-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine37-hyperv"
}

source "hyperv-iso" "generic-alpine38-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine38.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine38.vagrant.cfg ; ", "mount /dev/sda2 /mnt && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:9c1d8222c6af31f5e1e62dc25b5f4f922a27a6b3c7f8e136febd0c66dcdb51e3"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.8/releases/x86_64/alpine-virt-3.8.5-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine38-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine38-hyperv"
}

source "hyperv-iso" "generic-alpine39-hyperv" {
  boot_command                     = ["<enter><wait10>", "root<enter><wait>", "ifconfig eth0 up && udhcpc -i eth0<enter><wait>", "wget http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.alpine39.vagrant.cfg<enter><wait>", "sed -i -e \"/rc-service/d\" /sbin/setup-sshd<enter><wait>", "printf \"vagrant\\nvagrant\\ny\\n\" | setup-alpine -f /root/generic.alpine39.vagrant.cfg ; ", "mount /dev/sda2 /mnt && ", "echo 'PasswordAuthentication yes' >> /mnt/etc/ssh/sshd_config && ", "echo 'PermitRootLogin yes' >> /mnt/etc/ssh/sshd_config && ", "chroot /mnt apk add openntpd && chroot /mnt rc-update add openntpd default && ", "chroot /mnt apk add hvtools && chroot /mnt rc-update add hv_fcopy_daemon default && ", "chroot /mnt rc-update add hv_kvp_daemon default && chroot /mnt rc-update add hv_vss_daemon default && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:888d2245ec900351d3613d831838d1459ac29635b56bd528cd50fd643200d4cf"
  iso_url                          = "https://mirrors.edge.kernel.org/alpine/v3.9/releases/x86_64/alpine-virt-3.9.6-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-alpine39-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-alpine39-hyperv"
}

source "hyperv-iso" "generic-arch-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<spacebar>net.ifnames=0 biosdevname=0 systemd.mask=sshd.service<enter>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "sed -i 's/[#]\\?DNSSEC=.*/DNSSEC=false/g' /etc/systemd/resolved.conf<enter><wait>", "systemctl restart systemd-resolved<enter><wait>", "systemctl restart dhcpcd<enter><wait>", "curl -O 'http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.arch.vagrant{,.chroot}.sh'<enter><wait>", "bash generic.arch.vagrant.sh < generic.arch.vagrant.chroot.sh && systemctl reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:df6749df55b02cec98e5a9177c7957acfb96fe14d04553b6e4714100a4824f68"
  iso_url                          = "https://mirrors.edge.kernel.org/archlinux/iso/latest/archlinux-2022.11.01-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-arch-hyperv"
  shutdown_command                 = "systemctl poweroff"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "9800s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-arch-hyperv"
}

source "hyperv-iso" "generic-centos6-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.centos6.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:7c0dee2a0494dabd84809b72ddb4b761f9ef92b78a506aef709b531c54d30770"
  iso_url                          = "https://vault.centos.org/6.10/isos/x86_64/CentOS-6.10-x86_64-minimal.iso"
  memory                           = 2048
  output_directory                 = "output/generic-centos6-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-centos6-hyperv"
}

source "hyperv-iso" "generic-centos7-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.centos7.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:07b94e6b1a0b0260b94c83d6bb76b26bf7a310dc78d7a9c7432809fb9bc6194a"
  iso_url                          = "https://mirrors.edge.kernel.org/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-Minimal-2009.iso"
  memory                           = 2048
  output_directory                 = "output/generic-centos7-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-centos7-hyperv"
}

source "hyperv-iso" "generic-centos8-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.centos8.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:9602c69c52d93f51295c0199af395ca0edbe35e36506e32b8e749ce6c8f5b60a"
  iso_url                          = "https://vault.centos.org/8.5.2111/isos/x86_64/CentOS-8.5.2111-x86_64-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-centos8-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-centos8-hyperv"
}

source "hyperv-iso" "generic-centos8s-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.centos8s.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:fc0ddf5856fa0f38bb57a5d44fae43d9947f020071357596a60725e67f3d3fb4"
  iso_url                          = "https://mirrors.edge.kernel.org/centos/8-stream/isos/x86_64/CentOS-Stream-8-x86_64-20221125-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-centos8s-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-centos8s-hyperv"
}

source "hyperv-iso" "generic-centos9s-hyperv" {
  boot_command                     = ["<tab> net.ifnames=0 inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.centos9s.vagrant.ks vga=792 <enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:55a560c8fc43e3f2bfae3827a6e7c31fd45c1a72b61a2e9fc68f917cfddee9d1"
  iso_url                          = "https://dfw.mirror.rackspace.com/centos-stream/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-20221123.0-x86_64-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-centos9s-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-centos9s-hyperv"
}

source "hyperv-iso" "generic-debian10-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "/install.amd/vmlinuz auto=true priority=critical vga=788 initrd=/install.amd/gtk/initrd.gz --- quiet ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.debian10.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:75aa64071060402a594dcf1e14afd669ca0f8bf757b56d4c9c1a31b8f7c8f931"
  iso_url                          = "https://cdimage.debian.org/cdimage/archive/10.13.0/amd64/iso-cd/debian-10.13.0-amd64-netinst.iso"
  memory                           = 2048
  output_directory                 = "output/generic-debian10-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-debian10-hyperv"
}

source "hyperv-iso" "generic-debian11-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "/install.amd/vmlinuz auto=true priority=critical vga=788 initrd=/install.amd/gtk/initrd.gz --- quiet ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.debian11.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:e307d0e583b4a8f7e5b436f8413d4707dd4242b70aea61eb08591dc0378522f3"
  iso_url                          = "https://cdimage.debian.org/cdimage/release/11.5.0/amd64/iso-cd/debian-11.5.0-amd64-netinst.iso"
  memory                           = 2048
  output_directory                 = "output/generic-debian11-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-debian11-hyperv"
}

source "hyperv-iso" "generic-debian8-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "auto ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.debian8.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:a3bd67cd363b609e1340cea06a666cb476b63fc79abf4380c0475dd1b6dc8a31"
  iso_url                          = "https://cdimage.debian.org/cdimage/archive/8.11.1/amd64/iso-dvd/debian-8.11.1-amd64-DVD-1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-debian8-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-debian8-hyperv"
}

source "hyperv-iso" "generic-debian9-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "auto ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.debian9.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:71c7e9eb292acc880f84605b1ca2b997f25737fe0a43fc9586f61d35cd2eb43b"
  iso_url                          = "https://cdimage.debian.org/cdimage/archive/9.13.0/amd64/iso-cd/debian-9.13.0-amd64-netinst.iso"
  memory                           = 2048
  output_directory                 = "output/generic-debian9-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-debian9-hyperv"
}

source "hyperv-iso" "generic-devuan1-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "auto ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.devuan1.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:70c6abe544ec59b0d0882c666ca0377be1b6c218655dac1f61b2c7e88c9b3d9f"
  iso_url                          = "https://mirror.leaseweb.com/devuan/devuan_jessie/installer-iso/devuan_jessie_1.0.0_amd64_NETINST.iso"
  memory                           = 2048
  output_directory                 = "output/generic-devuan1-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P -h now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-devuan1-hyperv"
}

source "hyperv-iso" "generic-devuan2-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "auto ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.devuan2.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:9aa6de460fb944ddfec8c79306974a522be166e4d296e9673f083f9e1cc6c56c"
  iso_url                          = "https://mirror.leaseweb.com/devuan/devuan_ascii/installer-iso/devuan_ascii_2.1_amd64_netinst.iso"
  memory                           = 2048
  output_directory                 = "output/generic-devuan2-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P -h now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-devuan2-hyperv"
}

source "hyperv-iso" "generic-devuan3-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "auto ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.devuan3.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:1723cbbeb1aee26a54e1370b688e7dc03921402348d2a60086c58c18cd9cf24b"
  iso_url                          = "https://mirror.leaseweb.com/devuan/devuan_beowulf/installer-iso/devuan_beowulf_3.1.1_amd64_netinstall.iso"
  memory                           = 2048
  output_directory                 = "output/generic-devuan3-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P -h now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-devuan3-hyperv"
}

source "hyperv-iso" "generic-devuan4-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "auto ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.devuan4.vagrant.cfg ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:0923470af430e3d582a635956bbe4c13abc18fbaa4704e6deef3b362833e0ef5"
  iso_url                          = "https://mirror.leaseweb.com/devuan/devuan_chimaera/installer-iso/devuan_chimaera_4.0.0_amd64_netinstall.iso"
  memory                           = 2048
  output_directory                 = "output/generic-devuan4-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P -h now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-devuan4-hyperv"
}

source "hyperv-iso" "generic-dragonflybsd5-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "root<enter><wait5>", "/bin/sh<enter><wait5>", "dhclient -l /tmp/dhclient.lease.de0 de0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.dragonflybsd5.vagrant.cfg<enter><wait10>", "sh /tmp/installerconfig && reboot<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:7f95358f8c359ebedf433cd0604096fa1bc1f86b6188cbd9550b146f9f5478b8"
  iso_url                          = "https://archive.org/download/dfly-x86_64-5.6.3_REL/dfly-x86_64-5.6.3_REL.iso"
  mac_address                      = "00155d1d3d9e"
  memory                           = 2048
  output_directory                 = "output/generic-dragonflybsd5-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_host                         = "10.10.10.243"
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  use_legacy_network_adapter       = true
  vm_name                          = "generic-dragonflybsd5-hyperv"
}

source "hyperv-iso" "generic-dragonflybsd6-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "root<enter><wait5>", "/bin/sh<enter><wait5>", "dhclient -l /tmp/dhclient.lease.de0 de0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.dragonflybsd6.vagrant.cfg<enter><wait10>", "sh /tmp/installerconfig && reboot<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:2a4cc142d0f40b225f19679ad41654dd14e22ccb6920b46c15eb6d6b48a98193"
  iso_url                          = "https://mirror-master.dragonflybsd.org/iso-images/dfly-x86_64-6.2.2_REL.iso"
  mac_address                      = "00155d1d3d9f"
  memory                           = 2048
  output_directory                 = "output/generic-dragonflybsd6-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_host                         = "10.10.10.244"
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  use_legacy_network_adapter       = true
  vm_name                          = "generic-dragonflybsd6-hyperv"
}

source "hyperv-iso" "generic-fedora25-hyperv" {
  boot_command                     = ["<tab> ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora25.vagrant.ks ", "biosdevname=0 ", "net.ifnames=0 ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:86bc3694f4938382753d1e9536f2140a6c9c1978207766340c679a89509073c7"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/25/Server/x86_64/iso/Fedora-Server-netinst-x86_64-25-1.3.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora25-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora25-hyperv"
}

source "hyperv-iso" "generic-fedora26-hyperv" {
  boot_command                     = ["<tab> ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora26.vagrant.ks ", "biosdevname=0 ", "net.ifnames=0 ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:e260921ef5c7bd5ee2a7b2f2f1156af6483014c73984e4cf37f2b6690e0155e5"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/26/Server/x86_64/iso/Fedora-Server-netinst-x86_64-26-1.5.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora26-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora26-hyperv"
}

source "hyperv-iso" "generic-fedora27-hyperv" {
  boot_command                     = ["<tab> ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora27.vagrant.ks ", "biosdevname=0 ", "net.ifnames=0 ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:2b93836c38833b26891345388ff5ddea60529b27a616b4539d432a3520d1c90b"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/27/Server/x86_64/iso/Fedora-Server-netinst-x86_64-27-1.6.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora27-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora27-hyperv"
}

source "hyperv-iso" "generic-fedora28-hyperv" {
  boot_command                     = ["<tab> ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora28.vagrant.ks ", "biosdevname=0 ", "net.ifnames=0 ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:ea1efdc692356b3346326f82e2f468903e8da59324fdee8b10eac4fea83f23fe"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/28/Server/x86_64/iso/Fedora-Server-netinst-x86_64-28-1.1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora28-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora28-hyperv"
}

source "hyperv-iso" "generic-fedora29-hyperv" {
  boot_command                     = ["<tab> ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora29.vagrant.ks ", "biosdevname=0 ", "net.ifnames=0 ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:aa7fb0e6e5b71774ebdaab0dae76bdd9246a5bc7aedc28b7f1103aaaf9750654"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/29/Server/x86_64/iso/Fedora-Server-netinst-x86_64-29-1.2.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora29-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora29-hyperv"
}

source "hyperv-iso" "generic-fedora30-hyperv" {
  boot_command                     = ["<tab> ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora30.vagrant.ks ", "biosdevname=0 ", "net.ifnames=0 ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:5e4eac4566d8c572bfb3bcf54b7d6c82006ec3c6c882a2c9235c6d3494d7b100"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/30/Server/x86_64/iso/Fedora-Server-netinst-x86_64-30-1.2.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora30-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora30-hyperv"
}

source "hyperv-iso" "generic-fedora31-hyperv" {
  boot_command                     = ["<tab> ", "inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora31.vagrant.ks ", "biosdevname=0 ", "net.ifnames=0 ", "<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:5be8debd3e8fb4e86b9fbf67c7eb66ea598d2b7ad0c7ba8d505ce88067b43444"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/31/Server/x86_64/iso/Fedora-Server-netinst-x86_64-31-1.9.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora31-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora31-hyperv"
}

source "hyperv-iso" "generic-fedora32-hyperv" {
  boot_command                     = ["<tab> ", "<wait> text net.ifnames=0 ", "<wait>inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora32.vagrant.ks ", "<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:7f4afd2a26c718f9f15e4bbfd9c2e8849f81036d2a82a4e81fa4a313a833da9c"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/32/Server/x86_64/iso/Fedora-Server-netinst-x86_64-32-1.6.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora32-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora32-hyperv"
}

source "hyperv-iso" "generic-fedora33-hyperv" {
  boot_command                     = ["<tab> ", "<wait> text net.ifnames=0 ", "<wait>inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora33.vagrant.ks ", "<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:1f1f018e78f0cc23d08db0c85952344ea5c200e67b672da5b07507c066a52ccf"
  iso_url                          = "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/33/Server/x86_64/iso/Fedora-Server-netinst-x86_64-33-1.2.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora33-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora33-hyperv"
}

source "hyperv-iso" "generic-fedora34-hyperv" {
  boot_command                     = ["<tab> ", "<wait> text net.ifnames=0 ", "<wait>inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora34.vagrant.ks ", "<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:e1a38b9faa62f793ad4561b308c31f32876cfaaee94457a7a9108aaddaeec406"
  iso_url                          = "https://dl.fedoraproject.org/pub/fedora/linux/releases/34/Server/x86_64/iso/Fedora-Server-netinst-x86_64-34-1.2.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora34-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora34-hyperv"
}

source "hyperv-iso" "generic-fedora35-hyperv" {
  boot_command                     = ["<tab> ", "<wait> text net.ifnames=0 ", "<wait>inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora35.vagrant.ks ", "<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:dd35f955dd5a7054213a0098c6ee737ff116aa3090fc6dbfe89d424b5c3552dd"
  iso_url                          = "https://dl.fedoraproject.org/pub/fedora/linux/releases/35/Server/x86_64/iso/Fedora-Server-netinst-x86_64-35-1.2.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora35-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora35-hyperv"
}

source "hyperv-iso" "generic-fedora36-hyperv" {
  boot_command                     = ["<tab> ", "<wait> text net.ifnames=0 ", "<wait>inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora36.vagrant.ks ", "<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:421c4c6e23d72e4669a55e7710562287ecd9308b3d314329960f586b89ccca19"
  iso_url                          = "https://dl.fedoraproject.org/pub/fedora/linux/releases/36/Server/x86_64/iso/Fedora-Server-netinst-x86_64-36-1.5.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora36-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora36-hyperv"
}

source "hyperv-iso" "generic-fedora37-hyperv" {
  boot_command                     = ["c<wait>", "insmod all_video<enter><wait>", "set gfxpayload=keep<enter><wait>", "insmod increment<enter><wait>", "insmod xfs<enter><wait>", "insmod diskfilter<enter><wait>", "insmod mdraid1x<enter><wait>", "insmod fat<enter><wait>", "insmod blscfg<enter><wait>", "insmod gzio<enter><wait>", "insmod part_gpt<enter><wait>", "insmod ext2<enter><wait>", "insmod chain<enter><wait>", "search --no-floppy --set=root -l 'Fedora-S-dvd-x86_64-37'<enter><wait>", "linux /images/pxeboot/vmlinuz inst.stage2=hd:LABEL=Fedora-S-dvd-x86_64-37 rd.live.check ", "net.ifnames=0 inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.fedora37.vagrant.ks<enter><wait>", "initrd /images/pxeboot/initrd.img<enter><wait10>", "boot<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:149d4bae999022b07bd40f8272f6208bc28884dad5110c63e915d37458e6abc0"
  iso_url                          = "https://dl.fedoraproject.org/pub/fedora/linux/releases/37/Server/x86_64/iso/Fedora-Server-netinst-x86_64-37-1.7.iso"
  memory                           = 2048
  output_directory                 = "output/generic-fedora37-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-fedora37-hyperv"
}

source "hyperv-iso" "generic-freebsd11-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10>", "/bin/sh<enter><wait10>", "mdmfs -s 100m md1 /tmp<enter><wait5>", "mdmfs -s 100m md2 /mnt<enter><wait5>", "dhclient -l /tmp/dhclient.lease.hn0 hn0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.freebsd11.vagrant.cfg<enter><wait10>", "bsdinstall script /tmp/installerconfig && reboot<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:d76c1ded99b2c1005b1ff94cc0c811fbcd8a2d04196432009ab5f203c2146914"
  iso_url                          = "http://ftp-archive.freebsd.org/pub/FreeBSD-Archive/old-releases/ISO-IMAGES/11.4/FreeBSD-11.4-RELEASE-amd64-disc1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-freebsd11-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-freebsd11-hyperv"
}

source "hyperv-iso" "generic-freebsd12-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10>", "/bin/sh<enter><wait10>", "mdmfs -s 100m md1 /tmp<enter><wait5>", "mdmfs -s 100m md2 /mnt<enter><wait5>", "dhclient -l /tmp/dhclient.lease.hn0 hn0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.freebsd12.vagrant.cfg<enter><wait10>", "bsdinstall script /tmp/installerconfig && reboot<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:5f0c10ff9af582c7fca90f65868702aa02e80f344c186f0bc75639a687d65641"
  iso_url                          = "https://download.freebsd.org/ftp/releases/ISO-IMAGES/12.3/FreeBSD-12.3-RELEASE-amd64-disc1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-freebsd12-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-freebsd12-hyperv"
}

source "hyperv-iso" "generic-freebsd13-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10>", "/bin/sh<enter><wait10>", "mdmfs -s 100m md1 /tmp<enter><wait5>", "mdmfs -s 100m md2 /mnt<enter><wait5>", "dhclient -l /tmp/dhclient.lease.hn0 hn0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.freebsd13.vagrant.cfg<enter><wait10>", "bsdinstall script /tmp/installerconfig && reboot<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:697d81653fa246b921ddfcf1d15562c55249cc727b11fa3e47f470e2cf2b6a40"
  iso_url                          = "https://download.freebsd.org/ftp/releases/ISO-IMAGES/13.1/FreeBSD-13.1-RELEASE-amd64-disc1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-freebsd13-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-freebsd13-hyperv"
}

source "hyperv-iso" "generic-gentoo-hyperv" {
  boot_command                     = ["sed -i 's/min=.*/min=1,1,1,1,1/g' /etc/security/passwdqc.conf<enter><wait>", "passwd root<enter><wait><wait><wait>", "vagrant<enter><wait>", "vagrant<enter><wait>", "curl -O 'http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.gentoo.vagrant{,.chroot}.sh'<enter><wait>", "bash generic.gentoo.vagrant.sh<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "180s"
  communicator                     = "ssh"
  cpus                             = 8
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:89404626d79dbdb76dedb82d14cf555675aa40821d3ecff6c611a51b4b948bc3"
  iso_url                          = "https://mirrors.edge.kernel.org/gentoo/releases/amd64/autobuilds/current-install-amd64-minimal/install-amd64-minimal-20221127T170156Z.iso"
  memory                           = 8192
  output_directory                 = "output/generic-gentoo-hyperv"
  shutdown_command                 = "shutdown -hP now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "9800s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-gentoo-hyperv"
}

source "hyperv-iso" "generic-hardenedbsd11-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10><wait10><wait10><wait10><wait10><wait10><wait10>", "/bin/sh<enter><wait10>", "mdmfs -s 100m md1 /tmp<enter><wait5>", "mdmfs -s 100m md2 /mnt<enter><wait5>", "dhclient -l /tmp/dhclient.lease.hn0 hn0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.hardenedbsd11.vagrant.cfg<enter><wait10>", "bsdinstall script /tmp/installerconfig && reboot<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:8b2c90dc41ec68b561028af885eecb66bfd36223970d1c594923d1d54bf83467"
  iso_url                          = "https://dk-01.installer.hardenedbsd.org/pub/HardenedBSD/releases/amd64/amd64/ISO-IMAGES/hardenedbsd-11-stable-20190205-1/HardenedBSD-11-STABLE-v1100056.13-amd64-disc1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-hardenedbsd11-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-hardenedbsd11-hyperv"
}

source "hyperv-iso" "generic-hardenedbsd12-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10><wait10><wait10><wait10><wait10><wait10><wait10>", "/bin/sh<enter><wait10>", "mdmfs -s 100m md1 /tmp<enter><wait5>", "mdmfs -s 100m md2 /mnt<enter><wait5>", "dhclient -l /tmp/dhclient.lease.hn0 hn0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.hardenedbsd12.vagrant.cfg<enter><wait10>", "bsdinstall script /tmp/installerconfig && reboot<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:029225eaf92ba8e7ed7a7395f45492d09bc9a949488ecb9a5ca54df7c9f89661"
  iso_url                          = "https://dk-01.installer.hardenedbsd.org/pub/HardenedBSD/releases/amd64/amd64/ISO-IMAGES/hardenedbsd-12-stable-20190807-1/HardenedBSD-12-STABLE-v1200059.3-amd64-disc1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-hardenedbsd12-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-hardenedbsd12-hyperv"
}

source "hyperv-iso" "generic-hardenedbsd13-hyperv" {
  boot_command                     = ["<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<esc><wait><esc><wait><esc><wait><esc><wait><esc><wait><esc><wait>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "boot -s<enter>", "<wait10><wait10><wait10><wait10><wait10><wait10><wait10><wait10><wait10>", "/bin/sh<enter><wait10>", "mdmfs -s 100m md1 /tmp<enter><wait5>", "mdmfs -s 100m md2 /mnt<enter><wait5>", "dhclient -l /tmp/dhclient.lease.hn0 hn0<enter><wait5>", "fetch -o /tmp/installerconfig http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.hardenedbsd13.vagrant.cfg<enter><wait10>", "bsdinstall script /tmp/installerconfig && reboot<wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:63b55dfbdef5f680e4df5f28d42275d9a892fc951f3bb6ce2b0f552dc5c00bd6"
  iso_url                          = "https://ci-01.nyi.hardenedbsd.org/pub/hardenedbsd/13-stable/amd64/amd64/build-644/disc1.iso"
  memory                           = 2048
  output_directory                 = "output/generic-hardenedbsd13-hyperv"
  shutdown_command                 = "shutdown -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-hardenedbsd13-hyperv"
}

source "hyperv-iso" "generic-netbsd8-hyperv" {
  boot_command                     = ["<enter><wait10>", "<enter><wait10>", "e<enter><wait10>", "<enter><wait10>", "IF=`ifconfig | head -1 | awk -F':' '{print $1}'`<enter><wait10>", "dhclient $IF<enter><wait10>", "ftp -o /tmp/install-script.sh http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.netbsd8.install.sh<enter><wait10>", "TERM=wsvt25 /usr/sbin/sysinst && sh /tmp/install-script.sh && reboot<enter><wait10>", "a<wait><enter><wait10>", "a<wait><enter><wait10>", "a<wait><enter><wait10>", "b<wait><enter><wait10>", "a<wait><enter><wait10>", "a<wait><enter><wait10>", "b<wait><enter><wait10>", "a<wait><enter><wait10>", "b<wait><enter><wait10>", "x<wait><enter><wait10>", "<wait><enter><wait10>", "b<wait><enter><wait60>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "a<wait><enter><wait10>", "x<wait><enter><wait10>", "b<wait><enter><wait10>", "a<wait><enter><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait><enter><wait10>", "d<wait><enter><wait10>", "a<wait><enter><wait10>", "vagrant<enter><wait10>", "vagrant<enter><wait10>", "vagrant<enter><wait10>", "g<wait><enter><wait10>", "x<wait><enter><wait10>", "<wait><enter><wait10>", "x<wait><enter><wait10>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "40s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:55d03c51d5b94cf7f03a29c1ee7e9f49d6b0ec4c2e1b1a2523c03956b70a1841"
  iso_url                          = "https://ftp.netbsd.org/pub/NetBSD/iso/8.2/NetBSD-8.2-amd64.iso"
  mac_address                      = "00155d1d3d9b"
  memory                           = 2048
  output_directory                 = "output/generic-netbsd8-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_host                         = "10.10.10.241"
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "4800s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  use_legacy_network_adapter       = true
  vm_name                          = "generic-netbsd8-hyperv"
}

source "hyperv-iso" "generic-netbsd9-hyperv" {
  boot_command                     = ["<enter><wait10>", "<enter><wait10>", "e<enter><wait10>", "<enter><wait10>", "IF=`ifconfig | head -1 | awk -F':' '{print $1}'`<enter><wait10>", "/sbin/dhcpcd -d -n $IF<enter><wait10>", "ftp -o /tmp/install-script.sh http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.netbsd9.install.sh<enter><wait10>", "TERM=wsvt25 /usr/sbin/sysinst && sh /tmp/install-script.sh && reboot<enter><wait10>", "a<wait><enter><wait10>", "a<wait><enter><wait10>", "a<wait><enter><wait10>", "b<wait><enter><wait10>", "a<wait><enter><wait10>", "a<wait><enter><wait10>", "a<wait><enter><wait10>", "b<wait><enter><wait10>", "x<wait><enter><wait10>", "b<wait><enter><wait60>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "a<wait><enter><wait10>", "b<wait><enter><wait30>", "a<wait><enter><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait10><wait10><wait10><wait10><wait10><wait10>", "<wait><enter><wait10>", "d<wait><enter><wait10>", "a<wait><enter><wait10>", "vagrant<enter><wait10>", "vagrant<enter><wait10>", "vagrant<enter><wait10>", "g<wait><enter><wait10>", "x<wait><enter><wait10>", "<wait><enter><wait10>", "x<wait><enter><wait10>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "40s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:7e7f03bfd0584480cd11ed8833963310e34361d105498a028a2ebf3c10354171"
  iso_url                          = "https://ftp.netbsd.org/pub/NetBSD/iso/9.3/NetBSD-9.3-amd64.iso"
  mac_address                      = "00155d1d3d9c"
  memory                           = 2048
  output_directory                 = "output/generic-netbsd9-hyperv"
  shutdown_command                 = "/sbin/poweroff"
  skip_compaction                  = false
  ssh_host                         = "10.10.10.242"
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "4800s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  use_legacy_network_adapter       = true
  vm_name                          = "generic-netbsd9-hyperv"
}

source "hyperv-iso" "generic-openbsd6-hyperv" {
  boot_command                     = ["S<enter><wait5>", "dhclient hvn0<enter><wait10>", "ftp -o /install.conf http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.openbsd6.install.cfg<enter><wait5>", "ftp -o /install-chroot.sh http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.openbsd6.install.chroot.sh<enter><wait5>", "/install -a -f /install.conf -m install && chroot /mnt < /install-chroot.sh && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:b391350d72a4fcab550033c830a17612cff65ebdb6de428732d9b15f780bf9c2"
  iso_url                          = "https://mirrors.lavabit.com/openbsd/6.9/amd64/cd69.iso"
  memory                           = 2048
  output_directory                 = "output/generic-openbsd6-hyperv"
  shutdown_command                 = "shutdown -h -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-openbsd6-hyperv"
}

source "hyperv-iso" "generic-openbsd7-hyperv" {
  boot_command                     = ["S<enter><wait5>", "ifconfig hvn0 group dhcp<enter><wait5>", "ifconfig hvn0 inet autoconf<enter><wait10>", "ftp -o /install.conf http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.openbsd7.install.cfg<enter><wait5>", "ftp -o /install-chroot.sh http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.openbsd7.install.chroot.sh<enter><wait5>", "/install -a -f /install.conf -m install && chroot /mnt < /install-chroot.sh && reboot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "60s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:041f42e2692e609bfeabda71400100649af8f0aace12a5097794c3a868ff77ec"
  iso_url                          = "https://ftp.nluug.nl/OpenBSD/7.2/amd64/cd72.iso"
  memory                           = 2048
  output_directory                 = "output/generic-openbsd7-hyperv"
  shutdown_command                 = "shutdown -h -p now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-openbsd7-hyperv"
}

source "hyperv-iso" "generic-opensuse15-hyperv" {
  boot_command                     = ["<esc><enter><wait>", "linux netsetup=dhcp lang=en_US textmode=1 ssh=0 sshd=0 <wait>", "autoyast=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.opensuse15.vagrant.cfg<wait>", "<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:4683345f242397c7fd7d89a50731a120ffd60a24460e21d2634e783b3c169695"
  iso_url                          = "https://download.opensuse.org/distribution/leap/15.4/iso/openSUSE-Leap-15.4-DVD-x86_64-Build243.2-Media.iso"
  memory                           = 2048
  output_directory                 = "output/generic-opensuse15-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S /sbin/halt -h -p"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-opensuse15-hyperv"
}

source "hyperv-iso" "generic-opensuse42-hyperv" {
  boot_command                     = ["<esc><enter><wait>", "linux netsetup=dhcp install=https://ftp5.gwdg.de/pub/opensuse/discontinued/distribution/leap/42.3/repo/oss/ lang=en_US  textmode=1 <wait>", "autoyast=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.opensuse42.vagrant.cfg<wait>", "<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:d1a17116cf33a5582b83ef479d7b151b33938e60f07eebc544abf162e2aa5c12"
  iso_url                          = "https://ftp5.gwdg.de/pub/opensuse/discontinued/distribution/leap/42.3/iso/openSUSE-Leap-42.3-NET-x86_64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-opensuse42-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S /sbin/halt -h -p"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-opensuse42-hyperv"
}

source "hyperv-iso" "generic-oracle6-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.oracle6.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:625044388ee60a031965a42a32f4c1de0c029268975edcd542fd14160e0dadcb"
  iso_url                          = "https://yum.oracle.com/ISOS/OracleLinux/OL6/u10/x86_64/OracleLinux-R6-U10-Server-x86_64-dvd.iso"
  memory                           = 2048
  output_directory                 = "output/generic-oracle6-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-oracle6-hyperv"
}

source "hyperv-iso" "generic-oracle7-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.oracle7.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:6da0323423f3a52d20d1021c2651885052319ca4ace7532859d8d20640829004"
  iso_url                          = "https://yum.oracle.com/ISOS/OracleLinux/OL7/u9/x86_64/x86_64-boot-uek.iso"
  memory                           = 2048
  output_directory                 = "output/generic-oracle7-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-oracle7-hyperv"
}

source "hyperv-iso" "generic-oracle8-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.oracle8.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:d88b649f384a08cbb13e87e3ab0fb4088a1c8c601e3678abbb916c700229f80e"
  iso_url                          = "https://yum.oracle.com/ISOS/OracleLinux/OL8/u7/x86_64/x86_64-boot-uek.iso"
  memory                           = 2048
  output_directory                 = "output/generic-oracle8-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-oracle8-hyperv"
}

source "hyperv-iso" "generic-oracle9-hyperv" {
  boot_command                     = ["<tab> net.ifnames=0 inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.oracle9.vagrant.ks vga=792 <enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:21878b1136acdaa588556ac83c7e8700a0604c310cd05c22eb6a8329a85dfddd"
  iso_url                          = "https://yum.oracle.com/ISOS/OracleLinux/OL9/u1/x86_64/OracleLinux-R9-U1-x86_64-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-oracle9-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-oracle9-hyperv"
}

source "hyperv-iso" "generic-rhel6-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.rhel6.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:1e15f9202d2cdd4b2bdf9d6503a8543347f0cb8cc06ba9a0dfd2df4fdef5c727"
  iso_url                          = "https://archive.org/download/rhel-server-6.10-x86_64-dvd/rhel-server-6.10-x86_64-dvd.iso"
  memory                           = 2048
  output_directory                 = "output/generic-rhel6-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-rhel6-hyperv"
}

source "hyperv-iso" "generic-rhel7-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.rhel7.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:19d653ce2f04f202e79773a0cbeda82070e7527557e814ebbce658773fbe8191"
  iso_url                          = "https://archive.org/download/rhel-server-7.9-x86_64-dvd/rhel-server-7.9-x86_64-dvd.iso"
  memory                           = 2048
  output_directory                 = "output/generic-rhel7-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-rhel7-hyperv"
}

source "hyperv-iso" "generic-rhel8-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.rhel8.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:a6a7418a75d721cc696d3cbdd648b5248808e7fef0f8742f518e43b46fa08139"
  iso_url                          = "https://archive.org/download/rhel-8.7/rhel-8.7-x86_64-dvd.iso"
  memory                           = 2048
  output_directory                 = "output/generic-rhel8-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-rhel8-hyperv"
}

source "hyperv-iso" "generic-rhel9-hyperv" {
  boot_command                     = ["<tab> net.ifnames=0 inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.rhel9.vagrant.ks vga=792 <enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:d9dcae2b6e760d0f9dcf4a517bddc227d5fa3f213a8323592f4a07a05aa542a2"
  iso_url                          = "https://archive.org/download/rhel-9.1/rhel-baseos-9.1-x86_64-dvd.iso"
  memory                           = 2048
  output_directory                 = "output/generic-rhel9-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-rhel9-hyperv"
}

source "hyperv-iso" "generic-rocky8-hyperv" {
  boot_command                     = ["<tab> text biosdevname=0 net.ifnames=0 ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.rocky8.vagrant.ks<enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:94402815f251d982e748dc3466517db13fa5f9ea58fad491dcbd2cc821a360a2"
  iso_url                          = "https://ftp5.gwdg.de/pub/linux/rocky/8.7/isos/x86_64/Rocky-8.7-x86_64-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-rocky8-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-rocky8-hyperv"
}

source "hyperv-iso" "generic-rocky9-hyperv" {
  boot_command                     = ["<tab> net.ifnames=0 inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.rocky9.vagrant.ks vga=792 <enter><wait>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:a36753d0efbea2f54a3dc7bfaa4dba95efe9aa3d6af331d5c5b147ea91240c21"
  iso_url                          = "https://ftp5.gwdg.de/pub/linux/rocky/9.1/isos/x86_64/Rocky-9.1-x86_64-boot.iso"
  memory                           = 2048
  output_directory                 = "output/generic-rocky9-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-rocky9-hyperv"
}

source "hyperv-iso" "generic-ubuntu1604-hyperv" {
  boot_command                     = ["<enter><wait>", "<f6><esc>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false auto-install/enable=true debconf/priority=critical debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1604.vagrant.cfg --- <wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:b23488689e16cad7a269eb2d3a3bf725d3457ee6b0868e00c8762d3816e25848"
  iso_url                          = "https://mirrors.edge.kernel.org/ubuntu-releases/16.04.7/ubuntu-16.04.7-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1604-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1604-hyperv"
}

source "hyperv-iso" "generic-ubuntu1610-hyperv" {
  boot_command                     = ["<esc><wait>", "<esc><wait>", "<enter><wait>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false auto-install/enable=true debconf/priority=critical debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1610.vagrant.cfg --- <wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:72b0d421da77f1e0c549b4efe6fc6c184e9909d6792f0d1e59b56d63e9705659"
  iso_url                          = "https://old-releases.ubuntu.com/releases/16.10/ubuntu-16.10-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1610-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1610-hyperv"
}

source "hyperv-iso" "generic-ubuntu1704-hyperv" {
  boot_command                     = ["<esc><wait>", "<esc><wait>", "<enter><wait>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false auto-install/enable=true debconf/priority=critical debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1704.vagrant.cfg --- <wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:ca5d9a8438e2434b9a3ac2be67b5c5fa2c1f8e3e40b954519462935195464034"
  iso_url                          = "https://old-releases.ubuntu.com/releases/17.04/ubuntu-17.04-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1704-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1704-hyperv"
}

source "hyperv-iso" "generic-ubuntu1710-hyperv" {
  boot_command                     = ["<esc><wait>", "<esc><wait>", "<enter><wait>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false auto-install/enable=true debconf/priority=critical debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1710.vagrant.cfg --- <wait><enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "20s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:8ff73f1b622276758475c3bd5190b382774626de5a82c50930519381f6c3a3f8"
  iso_url                          = "https://old-releases.ubuntu.com/releases/17.10/ubuntu-17.10.1-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1710-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1710-hyperv"
}

source "hyperv-iso" "generic-ubuntu1804-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<esc><f6><esc>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false ", "auto-install/enable=true ", "debconf/priority=critical ", "console-setup/ask_detect=false ", "debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1804.vagrant.cfg<wait> ", " --- <enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:f5cbb8104348f0097a8e513b10173a07dbc6684595e331cb06f93f385d0aecf6"
  iso_url                          = "https://cdimage.ubuntu.com/ubuntu/releases/18.04.6/release/ubuntu-18.04.6-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1804-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1804-hyperv"
}

source "hyperv-iso" "generic-ubuntu1810-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<esc><f6><esc>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false ", "auto-install/enable=true ", "debconf/priority=critical ", "console-setup/ask_detect=false ", "debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1810.vagrant.cfg<wait> ", " --- <enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:cf9250781dadd919f23c9d9612212cad653e35fccc2fbcf6853f67ad09e067ba"
  iso_url                          = "https://old-releases.ubuntu.com/releases/18.10/ubuntu-18.10-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1810-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1810-hyperv"
}

source "hyperv-iso" "generic-ubuntu1904-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<esc><f6><esc>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false ", "auto-install/enable=true ", "debconf/priority=critical ", "console-setup/ask_detect=false ", "debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1904.vagrant.cfg<wait> ", " --- <enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:7e8a0d07522f591dfee9bc9fcd7c05466763161e6cb0117906655bce1750b2fa"
  iso_url                          = "https://old-releases.ubuntu.com/releases/19.04/ubuntu-19.04-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1904-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1904-hyperv"
}

source "hyperv-iso" "generic-ubuntu1910-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<esc><f6><esc>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false ", "auto-install/enable=true ", "debconf/priority=critical ", "console-setup/ask_detect=false ", "debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu1910.vagrant.cfg<wait> ", " --- <enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:921fd8b271c04aa86a321cc35b40e677f9b85f7903bf2204efb2389b0f0a64c1"
  iso_url                          = "https://archive.org/download/ubuntu-19.10-server-amd64/ubuntu-19.10-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu1910-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu1910-hyperv"
}

source "hyperv-iso" "generic-ubuntu2004-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait>", "<esc><f6><esc>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "/install/vmlinuz ", "initrd=/install/initrd.gz ", "fb=false ", "auto-install/enable=true ", "debconf/priority=critical ", "console-setup/ask_detect=false ", "debconf/frontend=noninteractive ", "ipv6.disable_ipv6=1 net.ifnames=0 biosdevname=0 preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu2004.vagrant.cfg<wait> ", " --- <enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "1s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:f11bda2f2caed8f420802b59f382c25160b114ccc665dbac9c5046e7fceaced2"
  iso_url                          = "https://cdimage.ubuntu.com/ubuntu-legacy-server/releases/20.04/release/ubuntu-20.04.1-legacy-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu2004-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu2004-hyperv"
}

source "hyperv-iso" "generic-ubuntu2010-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "c<wait10>", "set gfxpayload=keep<enter><wait10>", "linux /casper/vmlinuz autoinstall quiet net.ifnames=0 biosdevname=0 ", "ds=\"nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu2010.vagrant.\" --- <enter><wait10>", "initrd /casper/initrd<enter><wait10>", "boot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:defdc1ad3af7b661fe2b4ee861fb6fdb5f52039389ef56da6efc05e6adfe3d45"
  iso_url                          = "https://old-releases.ubuntu.com/releases/20.10/ubuntu-20.10-live-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu2010-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu2010-hyperv"
}

source "hyperv-iso" "generic-ubuntu2104-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "c<wait10>", "set gfxpayload=keep<enter><wait10>", "linux /casper/vmlinuz autoinstall quiet net.ifnames=0 biosdevname=0 ", "ds=\"nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu2104.vagrant.\" --- <enter><wait10>", "initrd /casper/initrd<enter><wait10>", "boot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:e4089c47104375b59951bad6c7b3ee5d9f6d80bfac4597e43a716bb8f5c1f3b0"
  iso_url                          = "https://old-releases.ubuntu.com/releases/21.04/ubuntu-21.04-live-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu2104-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu2104-hyperv"
}

source "hyperv-iso" "generic-ubuntu2110-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "c<wait10>", "set gfxpayload=keep<enter><wait10>", "linux /casper/vmlinuz autoinstall quiet net.ifnames=0 biosdevname=0 ", "ds=\"nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu2110.vagrant.\" --- <enter><wait10>", "initrd /casper/initrd<enter><wait10>", "boot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:e84f546dfc6743f24e8b1e15db9cc2d2c698ec57d9adfb852971772d1ce692d4"
  iso_url                          = "https://old-releases.ubuntu.com/releases/21.10/ubuntu-21.10-live-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu2110-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu2110-hyperv"
}

source "hyperv-iso" "generic-ubuntu2204-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "c<wait10>", "set gfxpayload=keep<enter><wait10>", "linux /casper/vmlinuz autoinstall quiet net.ifnames=0 biosdevname=0 ", "ds=\"nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu2204.vagrant.\" --- <enter><wait10>", "initrd /casper/initrd<enter><wait10>", "boot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:10f19c5b2b8d6db711582e0e27f5116296c34fe4b313ba45f9b201a5007056cb"
  iso_url                          = "https://releases.ubuntu.com/22.04/ubuntu-22.04.1-live-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu2204-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu2204-hyperv"
}

source "hyperv-iso" "generic-ubuntu2210-hyperv" {
  boot_command                     = ["<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "<tab><wait><tab><wait><tab><wait><tab><wait><tab><wait><tab><wait>", "c<wait10>", "set gfxpayload=keep<enter><wait10>", "linux /casper/vmlinuz autoinstall quiet net.ifnames=0 biosdevname=0 ", "ds=\"nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/generic.ubuntu2210.vagrant.\" --- <enter><wait10>", "initrd /casper/initrd<enter><wait10>", "boot<enter>"]
  boot_keygroup_interval           = "1s"
  boot_wait                        = "10s"
  communicator                     = "ssh"
  cpus                             = 2
  disk_size                        = 131072
  enable_dynamic_memory            = false
  enable_mac_spoofing              = false
  enable_secure_boot               = false
  enable_virtualization_extensions = false
  generation                       = 1
  guest_additions_mode             = "disable"
  headless                         = true
  http_directory                   = "http"
  iso_checksum                     = "sha256:874452797430a94ca240c95d8503035aa145bd03ef7d84f9b23b78f3c5099aed"
  iso_url                          = "https://releases.ubuntu.com/22.10/ubuntu-22.10-live-server-amd64.iso"
  memory                           = 2048
  output_directory                 = "output/generic-ubuntu2210-hyperv"
  shutdown_command                 = "echo 'vagrant' | sudo -S shutdown -P now"
  skip_compaction                  = false
  ssh_password                     = "vagrant"
  ssh_port                         = 22
  ssh_timeout                      = "7200s"
  ssh_username                     = "root"
  temp_path                        = "output/"
  vm_name                          = "generic-ubuntu2210-hyperv"
}

build {
  sources = ["source.hyperv-iso.generic-alma8-hyperv", "source.hyperv-iso.generic-alma9-hyperv", "source.hyperv-iso.generic-alpine310-hyperv", "source.hyperv-iso.generic-alpine311-hyperv", "source.hyperv-iso.generic-alpine312-hyperv", "source.hyperv-iso.generic-alpine313-hyperv", "source.hyperv-iso.generic-alpine314-hyperv", "source.hyperv-iso.generic-alpine315-hyperv", "source.hyperv-iso.generic-alpine316-hyperv", "source.hyperv-iso.generic-alpine317-hyperv", "source.hyperv-iso.generic-alpine35-hyperv", "source.hyperv-iso.generic-alpine36-hyperv", "source.hyperv-iso.generic-alpine37-hyperv", "source.hyperv-iso.generic-alpine38-hyperv", "source.hyperv-iso.generic-alpine39-hyperv", "source.hyperv-iso.generic-arch-hyperv", "source.hyperv-iso.generic-centos6-hyperv", "source.hyperv-iso.generic-centos7-hyperv", "source.hyperv-iso.generic-centos8-hyperv", "source.hyperv-iso.generic-centos8s-hyperv", "source.hyperv-iso.generic-centos9s-hyperv", "source.hyperv-iso.generic-debian10-hyperv", "source.hyperv-iso.generic-debian11-hyperv", "source.hyperv-iso.generic-debian8-hyperv", "source.hyperv-iso.generic-debian9-hyperv", "source.hyperv-iso.generic-devuan1-hyperv", "source.hyperv-iso.generic-devuan2-hyperv", "source.hyperv-iso.generic-devuan3-hyperv", "source.hyperv-iso.generic-devuan4-hyperv", "source.hyperv-iso.generic-dragonflybsd5-hyperv", "source.hyperv-iso.generic-dragonflybsd6-hyperv", "source.hyperv-iso.generic-fedora25-hyperv", "source.hyperv-iso.generic-fedora26-hyperv", "source.hyperv-iso.generic-fedora27-hyperv", "source.hyperv-iso.generic-fedora28-hyperv", "source.hyperv-iso.generic-fedora29-hyperv", "source.hyperv-iso.generic-fedora30-hyperv", "source.hyperv-iso.generic-fedora31-hyperv", "source.hyperv-iso.generic-fedora32-hyperv", "source.hyperv-iso.generic-fedora33-hyperv", "source.hyperv-iso.generic-fedora34-hyperv", "source.hyperv-iso.generic-fedora35-hyperv", "source.hyperv-iso.generic-fedora36-hyperv", "source.hyperv-iso.generic-fedora37-hyperv", "source.hyperv-iso.generic-freebsd11-hyperv", "source.hyperv-iso.generic-freebsd12-hyperv", "source.hyperv-iso.generic-freebsd13-hyperv", "source.hyperv-iso.generic-gentoo-hyperv", "source.hyperv-iso.generic-hardenedbsd11-hyperv", "source.hyperv-iso.generic-hardenedbsd12-hyperv", "source.hyperv-iso.generic-hardenedbsd13-hyperv", "source.hyperv-iso.generic-netbsd8-hyperv", "source.hyperv-iso.generic-netbsd9-hyperv", "source.hyperv-iso.generic-openbsd6-hyperv", "source.hyperv-iso.generic-openbsd7-hyperv", "source.hyperv-iso.generic-opensuse15-hyperv", "source.hyperv-iso.generic-opensuse42-hyperv", "source.hyperv-iso.generic-oracle6-hyperv", "source.hyperv-iso.generic-oracle7-hyperv", "source.hyperv-iso.generic-oracle8-hyperv", "source.hyperv-iso.generic-oracle9-hyperv", "source.hyperv-iso.generic-rhel6-hyperv", "source.hyperv-iso.generic-rhel7-hyperv", "source.hyperv-iso.generic-rhel8-hyperv", "source.hyperv-iso.generic-rhel9-hyperv", "source.hyperv-iso.generic-rocky8-hyperv", "source.hyperv-iso.generic-rocky9-hyperv", "source.hyperv-iso.generic-ubuntu1604-hyperv", "source.hyperv-iso.generic-ubuntu1610-hyperv", "source.hyperv-iso.generic-ubuntu1704-hyperv", "source.hyperv-iso.generic-ubuntu1710-hyperv", "source.hyperv-iso.generic-ubuntu1804-hyperv", "source.hyperv-iso.generic-ubuntu1810-hyperv", "source.hyperv-iso.generic-ubuntu1904-hyperv", "source.hyperv-iso.generic-ubuntu1910-hyperv", "source.hyperv-iso.generic-ubuntu2004-hyperv", "source.hyperv-iso.generic-ubuntu2010-hyperv", "source.hyperv-iso.generic-ubuntu2104-hyperv", "source.hyperv-iso.generic-ubuntu2110-hyperv", "source.hyperv-iso.generic-ubuntu2204-hyperv", "source.hyperv-iso.generic-ubuntu2210-hyperv"]

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle7-hyperv"]
    scripts             = ["scripts/oracle7/network.sh", "scripts/oracle7/yum.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle7-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/oracle7/kernel.sh", "scripts/oracle7/floppy.sh", "scripts/oracle7/virtualbox.sh", "scripts/oracle7/parallels.sh", "scripts/oracle7/vmware.sh", "scripts/oracle7/qemu.sh", "scripts/oracle7/lvm.sh", "scripts/oracle7/vagrant.sh", "scripts/oracle7/tuning.sh", "scripts/oracle7/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-opensuse42-hyperv"]
    scripts             = ["scripts/opensuse42/zypper.sh", "scripts/opensuse42/virtualbox.sh", "scripts/opensuse42/parallels.sh", "scripts/opensuse42/vmware.sh", "scripts/opensuse42/qemu.sh", "scripts/opensuse42/vagrant.sh", "scripts/opensuse42/network.sh", "scripts/opensuse42/floppy.sh", "scripts/opensuse42/postfix.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine35-hyperv"]
    scripts             = ["scripts/alpine35/network.sh", "scripts/alpine35/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine35-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine35/hostname.sh", "scripts/alpine35/lsb.sh", "scripts/alpine35/floppy.sh", "scripts/alpine35/vagrant.sh", "scripts/alpine35/sshd.sh", "scripts/alpine35/virtualbox.sh", "scripts/alpine35/parallels.sh", "scripts/alpine35/vmware.sh", "scripts/alpine35/qemu.sh", "scripts/alpine35/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine36-hyperv"]
    scripts             = ["scripts/alpine36/network.sh", "scripts/alpine36/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine36-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine36/hostname.sh", "scripts/alpine36/lsb.sh", "scripts/alpine36/floppy.sh", "scripts/alpine36/vagrant.sh", "scripts/alpine36/sshd.sh", "scripts/alpine36/virtualbox.sh", "scripts/alpine36/parallels.sh", "scripts/alpine36/vmware.sh", "scripts/alpine36/qemu.sh", "scripts/alpine36/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine37-hyperv"]
    scripts             = ["scripts/alpine37/network.sh", "scripts/alpine37/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine37-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine37/hostname.sh", "scripts/alpine37/lsb.sh", "scripts/alpine37/floppy.sh", "scripts/alpine37/vagrant.sh", "scripts/alpine37/sshd.sh", "scripts/alpine37/virtualbox.sh", "scripts/alpine37/parallels.sh", "scripts/alpine37/vmware.sh", "scripts/alpine37/qemu.sh", "scripts/alpine37/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine38-hyperv"]
    scripts             = ["scripts/alpine38/network.sh", "scripts/alpine38/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine38-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine38/hostname.sh", "scripts/alpine38/lsb.sh", "scripts/alpine38/floppy.sh", "scripts/alpine38/vagrant.sh", "scripts/alpine38/sshd.sh", "scripts/alpine38/virtualbox.sh", "scripts/alpine38/parallels.sh", "scripts/alpine38/vmware.sh", "scripts/alpine38/qemu.sh", "scripts/alpine38/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos6-hyperv"]
    scripts             = ["scripts/centos6/yum.sh", "scripts/centos6/base.sh", "scripts/centos6/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos6-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/centos6/kernel.sh", "scripts/centos6/vga.sh", "scripts/centos6/virtualbox.sh", "scripts/centos6/parallels.sh", "scripts/centos6/vmware.sh", "scripts/centos6/qemu.sh", "scripts/centos6/vagrant.sh", "scripts/centos6/tuning.sh", "scripts/centos6/sshd.sh", "scripts/centos6/randomness.sh", "scripts/centos6/updatedb.sh", "scripts/centos6/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos7-hyperv"]
    scripts             = ["scripts/centos7/network.sh", "scripts/centos7/yum.sh", "scripts/centos7/base.sh", "scripts/centos7/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos7-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/centos7/kernel.sh", "scripts/centos7/floppy.sh", "scripts/centos7/virtualbox.sh", "scripts/centos7/parallels.sh", "scripts/centos7/vmware.sh", "scripts/centos7/qemu.sh", "scripts/centos7/lvm.sh", "scripts/centos7/vagrant.sh", "scripts/centos7/tuning.sh", "scripts/centos7/sshd.sh", "scripts/centos7/randomness.sh", "scripts/centos7/updatedb.sh", "scripts/centos7/cleanup.sh", "scripts/centos7/unyum.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel7-hyperv"]
    scripts             = ["scripts/rhel7/network.sh", "scripts/rhel7/yum.sh", "scripts/rhel7/base.sh", "scripts/rhel7/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel7-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/rhel7/kernel.sh", "scripts/rhel7/floppy.sh", "scripts/rhel7/virtualbox.sh", "scripts/rhel7/parallels.sh", "scripts/rhel7/vmware.sh", "scripts/rhel7/qemu.sh", "scripts/rhel7/lvm.sh", "scripts/rhel7/vagrant.sh", "scripts/rhel7/tuning.sh", "scripts/rhel7/sshd.sh", "scripts/rhel7/randomness.sh", "scripts/rhel7/updatedb.sh", "scripts/rhel7/cleanup.sh", "scripts/rhel7/unyum.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-gentoo-hyperv"]
    scripts             = ["scripts/gentoo/network.sh", "scripts/gentoo/emerge.sh"]
    start_retry_timeout = "45m"
    timeout             = "12h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-gentoo-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/gentoo/virtualbox.sh", "scripts/gentoo/parallels.sh", "scripts/gentoo/vmware.sh", "scripts/gentoo/qemu.sh", "scripts/gentoo/vagrant.sh"]
    start_retry_timeout = "45m"
    timeout             = "12h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-arch-hyperv"]
    scripts             = ["scripts/arch/pacman.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-arch-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/arch/virtualbox.sh", "scripts/arch/parallels.sh", "scripts/arch/vmware.sh", "scripts/arch/qemu.sh", "scripts/arch/vagrant.sh", "scripts/arch/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian8-hyperv"]
    scripts             = ["scripts/debian8/apt.sh", "scripts/debian8/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian8-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/debian8/floppy.sh", "scripts/debian8/profile.sh", "scripts/debian8/vagrant.sh", "scripts/debian8/motd.sh", "scripts/debian8/fixtty.sh", "scripts/debian8/virtualbox.sh", "scripts/debian8/parallels.sh", "scripts/debian8/vmware.sh", "scripts/debian8/qemu.sh", "scripts/debian8/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian9-hyperv"]
    scripts             = ["scripts/debian9/apt.sh", "scripts/debian9/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian9-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/debian9/floppy.sh", "scripts/debian9/profile.sh", "scripts/debian9/vagrant.sh", "scripts/debian9/motd.sh", "scripts/debian9/fixtty.sh", "scripts/debian9/fixuuid.sh", "scripts/debian9/virtualbox.sh", "scripts/debian9/parallels.sh", "scripts/debian9/vmware.sh", "scripts/debian9/qemu.sh", "scripts/debian9/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora25-hyperv"]
    scripts             = ["scripts/fedora25/fixdns.sh", "scripts/fedora25/hostname.sh", "scripts/fedora25/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora25-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora25/fixtmp.sh", "scripts/fedora25/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora25-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora25/kernel.sh", "scripts/fedora25/vga.sh", "scripts/fedora25/virtualbox.sh", "scripts/fedora25/parallels.sh", "scripts/fedora25/vmware.sh", "scripts/fedora25/qemu.sh", "scripts/fedora25/vagrant.sh", "scripts/fedora25/tuning.sh", "scripts/fedora25/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora26-hyperv"]
    scripts             = ["scripts/fedora26/fixdns.sh", "scripts/fedora26/hostname.sh", "scripts/fedora26/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora26-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora26/fixtmp.sh", "scripts/fedora26/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora26-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora26/kernel.sh", "scripts/fedora26/vga.sh", "scripts/fedora26/virtualbox.sh", "scripts/fedora26/parallels.sh", "scripts/fedora26/vmware.sh", "scripts/fedora26/qemu.sh", "scripts/fedora26/vagrant.sh", "scripts/fedora26/tuning.sh", "scripts/fedora26/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora27-hyperv"]
    scripts             = ["scripts/fedora27/fixdns.sh", "scripts/fedora27/hostname.sh", "scripts/fedora27/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora27-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora27/fixtmp.sh", "scripts/fedora27/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora27-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora27/kernel.sh", "scripts/fedora27/vga.sh", "scripts/fedora27/virtualbox.sh", "scripts/fedora27/parallels.sh", "scripts/fedora27/vmware.sh", "scripts/fedora27/qemu.sh", "scripts/fedora27/vagrant.sh", "scripts/fedora27/tuning.sh", "scripts/fedora27/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora28-hyperv"]
    scripts             = ["scripts/fedora28/fixdns.sh", "scripts/fedora28/hostname.sh", "scripts/fedora28/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora28-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora28/fixtmp.sh", "scripts/fedora28/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora28-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora28/kernel.sh", "scripts/fedora28/vga.sh", "scripts/fedora28/virtualbox.sh", "scripts/fedora28/parallels.sh", "scripts/fedora28/vmware.sh", "scripts/fedora28/qemu.sh", "scripts/fedora28/vagrant.sh", "scripts/fedora28/tuning.sh", "scripts/fedora28/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora29-hyperv"]
    scripts             = ["scripts/fedora29/fixdns.sh", "scripts/fedora29/hostname.sh", "scripts/fedora29/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora29-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora29/fixtmp.sh", "scripts/fedora29/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora29-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora29/kernel.sh", "scripts/fedora29/vga.sh", "scripts/fedora29/virtualbox.sh", "scripts/fedora29/parallels.sh", "scripts/fedora29/vmware.sh", "scripts/fedora29/qemu.sh", "scripts/fedora29/vagrant.sh", "scripts/fedora29/tuning.sh", "scripts/fedora29/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-freebsd11-hyperv"]
    scripts             = ["scripts/freebsd11/pkg.sh", "scripts/freebsd11/hostname.sh", "scripts/freebsd11/kernel.sh", "scripts/freebsd11/firstboot.sh", "scripts/freebsd11/motd.sh", "scripts/freebsd11/vagrant.sh", "scripts/freebsd11/virtualbox.sh", "scripts/freebsd11/parallels.sh", "scripts/freebsd11/vmware.sh", "scripts/freebsd11/qemu.sh", "scripts/freebsd11/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-openbsd6-hyperv"]
    scripts             = ["scripts/openbsd6/pkg.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-openbsd6-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/openbsd6/hostname.sh", "scripts/openbsd6/motd.sh", "scripts/openbsd6/vagrant.sh", "scripts/openbsd6/profile.sh", "scripts/openbsd6/virtualbox.sh", "scripts/openbsd6/parallels.sh", "scripts/openbsd6/vmware.sh", "scripts/openbsd6/qemu.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1604-hyperv"]
    scripts             = ["scripts/ubuntu1604/apt.sh", "scripts/ubuntu1604/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1604-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1604/floppy.sh", "scripts/ubuntu1604/vagrant.sh", "scripts/ubuntu1604/profile.sh", "scripts/ubuntu1604/motd.sh", "scripts/ubuntu1604/fixtty.sh", "scripts/ubuntu1604/virtualbox.sh", "scripts/ubuntu1604/parallels.sh", "scripts/ubuntu1604/vmware.sh", "scripts/ubuntu1604/qemu.sh", "scripts/ubuntu1604/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1610-hyperv"]
    scripts             = ["scripts/ubuntu1610/apt.sh", "scripts/ubuntu1610/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1610-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1610/floppy.sh", "scripts/ubuntu1610/vagrant.sh", "scripts/ubuntu1610/profile.sh", "scripts/ubuntu1610/motd.sh", "scripts/ubuntu1610/fixtty.sh", "scripts/ubuntu1610/virtualbox.sh", "scripts/ubuntu1610/parallels.sh", "scripts/ubuntu1610/vmware.sh", "scripts/ubuntu1610/qemu.sh", "scripts/ubuntu1610/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1704-hyperv"]
    scripts             = ["scripts/ubuntu1704/apt.sh", "scripts/ubuntu1704/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1704-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1704/floppy.sh", "scripts/ubuntu1704/vagrant.sh", "scripts/ubuntu1704/profile.sh", "scripts/ubuntu1704/motd.sh", "scripts/ubuntu1704/fixtty.sh", "scripts/ubuntu1704/virtualbox.sh", "scripts/ubuntu1704/parallels.sh", "scripts/ubuntu1704/vmware.sh", "scripts/ubuntu1704/qemu.sh", "scripts/ubuntu1704/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1710-hyperv"]
    scripts             = ["scripts/ubuntu1710/apt.sh", "scripts/ubuntu1710/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1710-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1710/floppy.sh", "scripts/ubuntu1710/vagrant.sh", "scripts/ubuntu1710/profile.sh", "scripts/ubuntu1710/motd.sh", "scripts/ubuntu1710/fixtty.sh", "scripts/ubuntu1710/virtualbox.sh", "scripts/ubuntu1710/parallels.sh", "scripts/ubuntu1710/vmware.sh", "scripts/ubuntu1710/qemu.sh", "scripts/ubuntu1710/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1804-hyperv"]
    scripts             = ["scripts/ubuntu1804/apt.sh", "scripts/ubuntu1804/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1804-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1804/floppy.sh", "scripts/ubuntu1804/vagrant.sh", "scripts/ubuntu1804/profile.sh", "scripts/ubuntu1804/motd.sh", "scripts/ubuntu1804/fixtty.sh", "scripts/ubuntu1804/virtualbox.sh", "scripts/ubuntu1804/parallels.sh", "scripts/ubuntu1804/vmware.sh", "scripts/ubuntu1804/qemu.sh", "scripts/ubuntu1804/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1810-hyperv"]
    scripts             = ["scripts/ubuntu1810/apt.sh", "scripts/ubuntu1810/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1810-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1810/floppy.sh", "scripts/ubuntu1810/vagrant.sh", "scripts/ubuntu1810/profile.sh", "scripts/ubuntu1810/motd.sh", "scripts/ubuntu1810/fixtty.sh", "scripts/ubuntu1810/virtualbox.sh", "scripts/ubuntu1810/parallels.sh", "scripts/ubuntu1810/vmware.sh", "scripts/ubuntu1810/qemu.sh", "scripts/ubuntu1810/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-freebsd12-hyperv"]
    scripts             = ["scripts/freebsd12/pkg.sh", "scripts/freebsd12/hostname.sh", "scripts/freebsd12/kernel.sh", "scripts/freebsd12/firstboot.sh", "scripts/freebsd12/motd.sh", "scripts/freebsd12/vagrant.sh", "scripts/freebsd12/virtualbox.sh", "scripts/freebsd12/parallels.sh", "scripts/freebsd12/vmware.sh", "scripts/freebsd12/qemu.sh", "scripts/freebsd12/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel6-hyperv"]
    scripts             = ["scripts/rhel6/network.sh", "scripts/rhel6/yum.sh", "scripts/rhel6/base.sh", "scripts/rhel6/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel6-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/rhel6/kernel.sh", "scripts/rhel6/vga.sh", "scripts/rhel6/virtualbox.sh", "scripts/rhel6/parallels.sh", "scripts/rhel6/vmware.sh", "scripts/rhel6/qemu.sh", "scripts/rhel6/vagrant.sh", "scripts/rhel6/tuning.sh", "scripts/rhel6/sshd.sh", "scripts/rhel6/randomness.sh", "scripts/rhel6/updatedb.sh", "scripts/rhel6/cleanup.sh", "scripts/rhel6/unyum.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel8-hyperv"]
    scripts             = ["scripts/rhel8/network.sh", "scripts/rhel8/dnf.sh", "scripts/rhel8/base.sh", "scripts/rhel8/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel8-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/rhel8/kernel.sh", "scripts/rhel8/floppy.sh", "scripts/rhel8/virtualbox.sh", "scripts/rhel8/parallels.sh", "scripts/rhel8/vmware.sh", "scripts/rhel8/qemu.sh", "scripts/rhel8/vagrant.sh", "scripts/rhel8/tuning.sh", "scripts/rhel8/sshd.sh", "scripts/rhel8/randomness.sh", "scripts/rhel8/updatedb.sh", "scripts/rhel8/cleanup.sh", "scripts/rhel8/undnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-hardenedbsd11-hyperv"]
    scripts             = ["scripts/hardenedbsd11/pkg.sh", "scripts/hardenedbsd11/hostname.sh", "scripts/hardenedbsd11/kernel.sh", "scripts/hardenedbsd11/firstboot.sh", "scripts/hardenedbsd11/motd.sh", "scripts/hardenedbsd11/vagrant.sh", "scripts/hardenedbsd11/virtualbox.sh", "scripts/hardenedbsd11/parallels.sh", "scripts/hardenedbsd11/vmware.sh", "scripts/hardenedbsd11/qemu.sh", "scripts/hardenedbsd11/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-dragonflybsd5-hyperv"]
    scripts             = ["scripts/dragonflybsd5/pkg.sh", "scripts/dragonflybsd5/hostname.sh", "scripts/dragonflybsd5/kernel.sh", "scripts/dragonflybsd5/firstboot.sh", "scripts/dragonflybsd5/motd.sh", "scripts/dragonflybsd5/vagrant.sh", "scripts/dragonflybsd5/virtualbox.sh", "scripts/dragonflybsd5/parallels.sh", "scripts/dragonflybsd5/vmware.sh", "scripts/dragonflybsd5/qemu.sh", "scripts/dragonflybsd5/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-netbsd8-hyperv"]
    scripts             = ["scripts/netbsd8/pkg.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-netbsd8-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/netbsd8/hostname.sh", "scripts/netbsd8/motd.sh", "scripts/netbsd8/vagrant.sh", "scripts/netbsd8/profile.sh", "scripts/netbsd8/virtualbox.sh", "scripts/netbsd8/parallels.sh", "scripts/netbsd8/vmware.sh", "scripts/netbsd8/qemu.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-hardenedbsd12-hyperv"]
    scripts             = ["scripts/hardenedbsd12/pkg.sh", "scripts/hardenedbsd12/hostname.sh", "scripts/hardenedbsd12/kernel.sh", "scripts/hardenedbsd12/firstboot.sh", "scripts/hardenedbsd12/motd.sh", "scripts/hardenedbsd12/vagrant.sh", "scripts/hardenedbsd12/virtualbox.sh", "scripts/hardenedbsd12/parallels.sh", "scripts/hardenedbsd12/vmware.sh", "scripts/hardenedbsd12/qemu.sh", "scripts/hardenedbsd12/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine39-hyperv"]
    scripts             = ["scripts/alpine39/network.sh", "scripts/alpine39/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine39-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine39/hostname.sh", "scripts/alpine39/lsb.sh", "scripts/alpine39/floppy.sh", "scripts/alpine39/vagrant.sh", "scripts/alpine39/sshd.sh", "scripts/alpine39/virtualbox.sh", "scripts/alpine39/parallels.sh", "scripts/alpine39/vmware.sh", "scripts/alpine39/qemu.sh", "scripts/alpine39/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian10-hyperv"]
    scripts             = ["scripts/debian10/apt.sh", "scripts/debian10/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian10-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/debian10/floppy.sh", "scripts/debian10/profile.sh", "scripts/debian10/vagrant.sh", "scripts/debian10/motd.sh", "scripts/debian10/fixtty.sh", "scripts/debian10/virtualbox.sh", "scripts/debian10/parallels.sh", "scripts/debian10/vmware.sh", "scripts/debian10/qemu.sh", "scripts/debian10/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1904-hyperv"]
    scripts             = ["scripts/ubuntu1904/apt.sh", "scripts/ubuntu1904/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1904-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1904/floppy.sh", "scripts/ubuntu1904/vagrant.sh", "scripts/ubuntu1904/profile.sh", "scripts/ubuntu1904/motd.sh", "scripts/ubuntu1904/fixtty.sh", "scripts/ubuntu1904/virtualbox.sh", "scripts/ubuntu1904/parallels.sh", "scripts/ubuntu1904/vmware.sh", "scripts/ubuntu1904/qemu.sh", "scripts/ubuntu1904/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora30-hyperv"]
    scripts             = ["scripts/fedora30/fixdns.sh", "scripts/fedora30/hostname.sh", "scripts/fedora30/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora30-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora30/fixtmp.sh", "scripts/fedora30/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora30-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora30/kernel.sh", "scripts/fedora30/updatedb.sh", "scripts/fedora30/vga.sh", "scripts/fedora30/virtualbox.sh", "scripts/fedora30/parallels.sh", "scripts/fedora30/vmware.sh", "scripts/fedora30/qemu.sh", "scripts/fedora30/vagrant.sh", "scripts/fedora30/tuning.sh", "scripts/fedora30/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle8-hyperv"]
    scripts             = ["scripts/oracle8/network.sh", "scripts/oracle8/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle8-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/oracle8/kernel.sh", "scripts/oracle8/floppy.sh", "scripts/oracle8/virtualbox.sh", "scripts/oracle8/parallels.sh", "scripts/oracle8/vmware.sh", "scripts/oracle8/qemu.sh", "scripts/oracle8/lvm.sh", "scripts/oracle8/vagrant.sh", "scripts/oracle8/tuning.sh", "scripts/oracle8/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine310-hyperv"]
    scripts             = ["scripts/alpine310/network.sh", "scripts/alpine310/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine310-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine310/hostname.sh", "scripts/alpine310/lsb.sh", "scripts/alpine310/floppy.sh", "scripts/alpine310/vagrant.sh", "scripts/alpine310/sshd.sh", "scripts/alpine310/virtualbox.sh", "scripts/alpine310/parallels.sh", "scripts/alpine310/vmware.sh", "scripts/alpine310/qemu.sh", "scripts/alpine310/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-opensuse15-hyperv"]
    scripts             = ["scripts/opensuse15/zypper.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-opensuse15-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/opensuse15/virtualbox.sh", "scripts/opensuse15/parallels.sh", "scripts/opensuse15/vmware.sh", "scripts/opensuse15/qemu.sh", "scripts/opensuse15/vagrant.sh", "scripts/opensuse15/network.sh", "scripts/opensuse15/floppy.sh", "scripts/opensuse15/postfix.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos8-hyperv"]
    scripts             = ["scripts/centos8/network.sh", "scripts/centos8/dnf.sh", "scripts/centos8/base.sh", "scripts/centos8/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos8-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/centos8/kernel.sh", "scripts/centos8/floppy.sh", "scripts/centos8/virtualbox.sh", "scripts/centos8/parallels.sh", "scripts/centos8/vmware.sh", "scripts/centos8/qemu.sh", "scripts/centos8/lvm.sh", "scripts/centos8/vagrant.sh", "scripts/centos8/tuning.sh", "scripts/centos8/sshd.sh", "scripts/centos8/randomness.sh", "scripts/centos8/updatedb.sh", "scripts/centos8/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora31-hyperv"]
    scripts             = ["scripts/fedora31/fixdns.sh", "scripts/fedora31/hostname.sh", "scripts/fedora31/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora31-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora31/fixtmp.sh", "scripts/fedora31/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora31-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora31/kernel.sh", "scripts/fedora31/updatedb.sh", "scripts/fedora31/vga.sh", "scripts/fedora31/virtualbox.sh", "scripts/fedora31/parallels.sh", "scripts/fedora31/vmware.sh", "scripts/fedora31/qemu.sh", "scripts/fedora31/vagrant.sh", "scripts/fedora31/tuning.sh", "scripts/fedora31/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1910-hyperv"]
    scripts             = ["scripts/ubuntu1910/apt.sh", "scripts/ubuntu1910/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu1910-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu1910/floppy.sh", "scripts/ubuntu1910/vagrant.sh", "scripts/ubuntu1910/profile.sh", "scripts/ubuntu1910/motd.sh", "scripts/ubuntu1910/fixtty.sh", "scripts/ubuntu1910/virtualbox.sh", "scripts/ubuntu1910/parallels.sh", "scripts/ubuntu1910/vmware.sh", "scripts/ubuntu1910/qemu.sh", "scripts/ubuntu1910/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "/bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine311-hyperv"]
    scripts             = ["scripts/alpine311/network.sh", "scripts/alpine311/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine311-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine311/hostname.sh", "scripts/alpine311/lsb.sh", "scripts/alpine311/floppy.sh", "scripts/alpine311/vagrant.sh", "scripts/alpine311/sshd.sh", "scripts/alpine311/virtualbox.sh", "scripts/alpine311/parallels.sh", "scripts/alpine311/vmware.sh", "scripts/alpine311/qemu.sh", "scripts/alpine311/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2004-hyperv"]
    scripts             = ["scripts/ubuntu2004/apt.sh", "scripts/ubuntu2004/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2004-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu2004/floppy.sh", "scripts/ubuntu2004/vagrant.sh", "scripts/ubuntu2004/profile.sh", "scripts/ubuntu2004/motd.sh", "scripts/ubuntu2004/fixtty.sh", "scripts/ubuntu2004/virtualbox.sh", "scripts/ubuntu2004/parallels.sh", "scripts/ubuntu2004/vmware.sh", "scripts/ubuntu2004/qemu.sh", "scripts/ubuntu2004/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora32-hyperv"]
    scripts             = ["scripts/fedora32/fixdns.sh", "scripts/fedora32/hostname.sh", "scripts/fedora32/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora32-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora32/fixtmp.sh", "scripts/fedora32/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora32-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora32/kernel.sh", "scripts/fedora32/updatedb.sh", "scripts/fedora32/vga.sh", "scripts/fedora32/virtualbox.sh", "scripts/fedora32/parallels.sh", "scripts/fedora32/vmware.sh", "scripts/fedora32/qemu.sh", "scripts/fedora32/vagrant.sh", "scripts/fedora32/tuning.sh", "scripts/fedora32/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-netbsd9-hyperv"]
    scripts             = ["scripts/netbsd9/pkg.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-netbsd9-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/netbsd9/hostname.sh", "scripts/netbsd9/motd.sh", "scripts/netbsd9/vagrant.sh", "scripts/netbsd9/profile.sh", "scripts/netbsd9/virtualbox.sh", "scripts/netbsd9/parallels.sh", "scripts/netbsd9/vmware.sh", "scripts/netbsd9/qemu.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "/bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine312-hyperv"]
    scripts             = ["scripts/alpine312/network.sh", "scripts/alpine312/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine312-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine312/hostname.sh", "scripts/alpine312/lsb.sh", "scripts/alpine312/floppy.sh", "scripts/alpine312/vagrant.sh", "scripts/alpine312/sshd.sh", "scripts/alpine312/virtualbox.sh", "scripts/alpine312/parallels.sh", "scripts/alpine312/vmware.sh", "scripts/alpine312/qemu.sh", "scripts/alpine312/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan1-hyperv"]
    scripts             = ["scripts/devuan1/apt.sh", "scripts/devuan1/network.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan1-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/devuan1/floppy.sh", "scripts/devuan1/vagrant.sh", "scripts/devuan1/motd.sh", "scripts/devuan1/virtualbox.sh", "scripts/devuan1/parallels.sh", "scripts/devuan1/vmware.sh", "scripts/devuan1/qemu.sh", "scripts/devuan1/cleanup.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan2-hyperv"]
    scripts             = ["scripts/devuan2/apt.sh", "scripts/devuan2/network.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan2-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/devuan2/floppy.sh", "scripts/devuan2/vagrant.sh", "scripts/devuan2/motd.sh", "scripts/devuan2/virtualbox.sh", "scripts/devuan2/parallels.sh", "scripts/devuan2/vmware.sh", "scripts/devuan2/qemu.sh", "scripts/devuan2/cleanup.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan3-hyperv"]
    scripts             = ["scripts/devuan3/apt.sh", "scripts/devuan3/network.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan3-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/devuan3/floppy.sh", "scripts/devuan3/vagrant.sh", "scripts/devuan3/motd.sh", "scripts/devuan3/virtualbox.sh", "scripts/devuan3/parallels.sh", "scripts/devuan3/vmware.sh", "scripts/devuan3/qemu.sh", "scripts/devuan3/cleanup.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2010-hyperv"]
    scripts             = ["scripts/ubuntu2010/apt.sh", "scripts/ubuntu2010/floppy.sh", "scripts/ubuntu2010/fixkvp.sh", "scripts/ubuntu2010/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2010-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu2010/vagrant.sh", "scripts/ubuntu2010/profile.sh", "scripts/ubuntu2010/motd.sh", "scripts/ubuntu2010/fixtty.sh", "scripts/ubuntu2010/virtualbox.sh", "scripts/ubuntu2010/parallels.sh", "scripts/ubuntu2010/vmware.sh", "scripts/ubuntu2010/qemu.sh", "scripts/ubuntu2010/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora33-hyperv"]
    scripts             = ["scripts/fedora33/fixdns.sh", "scripts/fedora33/hostname.sh", "scripts/fedora33/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora33-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora33/fixtmp.sh", "scripts/fedora33/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora33-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora33/kernel.sh", "scripts/fedora33/updatedb.sh", "scripts/fedora33/vga.sh", "scripts/fedora33/virtualbox.sh", "scripts/fedora33/parallels.sh", "scripts/fedora33/vmware.sh", "scripts/fedora33/qemu.sh", "scripts/fedora33/vagrant.sh", "scripts/fedora33/tuning.sh", "scripts/fedora33/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "/bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine313-hyperv"]
    scripts             = ["scripts/alpine313/network.sh", "scripts/alpine313/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine313-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine313/hostname.sh", "scripts/alpine313/lsb.sh", "scripts/alpine313/floppy.sh", "scripts/alpine313/vagrant.sh", "scripts/alpine313/sshd.sh", "scripts/alpine313/virtualbox.sh", "scripts/alpine313/parallels.sh", "scripts/alpine313/vmware.sh", "scripts/alpine313/qemu.sh", "scripts/alpine313/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "/bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine314-hyperv"]
    scripts             = ["scripts/alpine314/network.sh", "scripts/alpine314/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine314-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine314/hostname.sh", "scripts/alpine314/lsb.sh", "scripts/alpine314/floppy.sh", "scripts/alpine314/vagrant.sh", "scripts/alpine314/sshd.sh", "scripts/alpine314/virtualbox.sh", "scripts/alpine314/parallels.sh", "scripts/alpine314/vmware.sh", "scripts/alpine314/qemu.sh", "scripts/alpine314/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2104-hyperv"]
    scripts             = ["scripts/ubuntu2104/apt.sh", "scripts/ubuntu2104/floppy.sh", "scripts/ubuntu2104/fixkvp.sh", "scripts/ubuntu2104/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2104-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu2104/vagrant.sh", "scripts/ubuntu2104/profile.sh", "scripts/ubuntu2104/motd.sh", "scripts/ubuntu2104/fixtty.sh", "scripts/ubuntu2104/virtualbox.sh", "scripts/ubuntu2104/parallels.sh", "scripts/ubuntu2104/vmware.sh", "scripts/ubuntu2104/qemu.sh", "scripts/ubuntu2104/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rocky8-hyperv"]
    scripts             = ["scripts/rocky8/network.sh", "scripts/rocky8/dnf.sh", "scripts/rocky8/base.sh", "scripts/rocky8/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rocky8-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/rocky8/kernel.sh", "scripts/rocky8/floppy.sh", "scripts/rocky8/virtualbox.sh", "scripts/rocky8/parallels.sh", "scripts/rocky8/vmware.sh", "scripts/rocky8/qemu.sh", "scripts/rocky8/lvm.sh", "scripts/rocky8/vagrant.sh", "scripts/rocky8/tuning.sh", "scripts/rocky8/sshd.sh", "scripts/rocky8/randomness.sh", "scripts/rocky8/updatedb.sh", "scripts/rocky8/cleanup.sh", "scripts/rocky8/undnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alma8-hyperv"]
    scripts             = ["scripts/alma8/network.sh", "scripts/alma8/dnf.sh", "scripts/alma8/base.sh", "scripts/alma8/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alma8-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alma8/kernel.sh", "scripts/alma8/floppy.sh", "scripts/alma8/virtualbox.sh", "scripts/alma8/parallels.sh", "scripts/alma8/vmware.sh", "scripts/alma8/qemu.sh", "scripts/alma8/lvm.sh", "scripts/alma8/vagrant.sh", "scripts/alma8/tuning.sh", "scripts/alma8/sshd.sh", "scripts/alma8/randomness.sh", "scripts/alma8/updatedb.sh", "scripts/alma8/cleanup.sh", "scripts/alma8/undnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora34-hyperv"]
    scripts             = ["scripts/fedora34/fixdns.sh", "scripts/fedora34/hostname.sh", "scripts/fedora34/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora34-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora34/fixtmp.sh", "scripts/fedora34/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora34-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora34/kernel.sh", "scripts/fedora34/updatedb.sh", "scripts/fedora34/vga.sh", "scripts/fedora34/virtualbox.sh", "scripts/fedora34/parallels.sh", "scripts/fedora34/vmware.sh", "scripts/fedora34/qemu.sh", "scripts/fedora34/vagrant.sh", "scripts/fedora34/tuning.sh", "scripts/fedora34/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-freebsd13-hyperv"]
    scripts             = ["scripts/freebsd13/pkg.sh", "scripts/freebsd13/hostname.sh", "scripts/freebsd13/kernel.sh", "scripts/freebsd13/firstboot.sh", "scripts/freebsd13/motd.sh", "scripts/freebsd13/vagrant.sh", "scripts/freebsd13/virtualbox.sh", "scripts/freebsd13/parallels.sh", "scripts/freebsd13/vmware.sh", "scripts/freebsd13/qemu.sh", "scripts/freebsd13/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-hardenedbsd13-hyperv"]
    scripts             = ["scripts/hardenedbsd13/pkg.sh", "scripts/hardenedbsd13/hostname.sh", "scripts/hardenedbsd13/kernel.sh", "scripts/hardenedbsd13/firstboot.sh", "scripts/hardenedbsd13/motd.sh", "scripts/hardenedbsd13/vagrant.sh", "scripts/hardenedbsd13/virtualbox.sh", "scripts/hardenedbsd13/parallels.sh", "scripts/hardenedbsd13/vmware.sh", "scripts/hardenedbsd13/qemu.sh", "scripts/hardenedbsd13/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-dragonflybsd6-hyperv"]
    scripts             = ["scripts/dragonflybsd6/pkg.sh", "scripts/dragonflybsd6/hostname.sh", "scripts/dragonflybsd6/kernel.sh", "scripts/dragonflybsd6/firstboot.sh", "scripts/dragonflybsd6/motd.sh", "scripts/dragonflybsd6/vagrant.sh", "scripts/dragonflybsd6/virtualbox.sh", "scripts/dragonflybsd6/parallels.sh", "scripts/dragonflybsd6/vmware.sh", "scripts/dragonflybsd6/qemu.sh", "scripts/dragonflybsd6/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian11-hyperv"]
    scripts             = ["scripts/debian11/apt.sh", "scripts/debian11/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-debian11-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/debian11/floppy.sh", "scripts/debian11/profile.sh", "scripts/debian11/vagrant.sh", "scripts/debian11/motd.sh", "scripts/debian11/fixtty.sh", "scripts/debian11/virtualbox.sh", "scripts/debian11/parallels.sh", "scripts/debian11/vmware.sh", "scripts/debian11/qemu.sh", "scripts/debian11/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/sh {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-openbsd7-hyperv"]
    scripts             = ["scripts/openbsd7/pkg.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /usr/local/bin/bash {{ .Path }}"
    expect_disconnect   = "true"
    only                = ["generic-openbsd7-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/openbsd7/hostname.sh", "scripts/openbsd7/motd.sh", "scripts/openbsd7/vagrant.sh", "scripts/openbsd7/profile.sh", "scripts/openbsd7/virtualbox.sh", "scripts/openbsd7/parallels.sh", "scripts/openbsd7/vmware.sh", "scripts/openbsd7/qemu.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2110-hyperv"]
    scripts             = ["scripts/ubuntu2110/apt.sh", "scripts/ubuntu2110/floppy.sh", "scripts/ubuntu2110/fixkvp.sh", "scripts/ubuntu2110/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2110-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu2110/vagrant.sh", "scripts/ubuntu2110/profile.sh", "scripts/ubuntu2110/motd.sh", "scripts/ubuntu2110/fixtty.sh", "scripts/ubuntu2110/virtualbox.sh", "scripts/ubuntu2110/parallels.sh", "scripts/ubuntu2110/vmware.sh", "scripts/ubuntu2110/qemu.sh", "scripts/ubuntu2110/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "/bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine315-hyperv"]
    scripts             = ["scripts/alpine315/network.sh", "scripts/alpine315/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine315-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine315/hostname.sh", "scripts/alpine315/lsb.sh", "scripts/alpine315/floppy.sh", "scripts/alpine315/vagrant.sh", "scripts/alpine315/sshd.sh", "scripts/alpine315/virtualbox.sh", "scripts/alpine315/parallels.sh", "scripts/alpine315/vmware.sh", "scripts/alpine315/qemu.sh", "scripts/alpine315/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora35-hyperv"]
    scripts             = ["scripts/fedora35/fixdns.sh", "scripts/fedora35/hostname.sh", "scripts/fedora35/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora35-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora35/fixtmp.sh", "scripts/fedora35/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora35-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora35/kernel.sh", "scripts/fedora35/updatedb.sh", "scripts/fedora35/vga.sh", "scripts/fedora35/virtualbox.sh", "scripts/fedora35/parallels.sh", "scripts/fedora35/vmware.sh", "scripts/fedora35/qemu.sh", "scripts/fedora35/vagrant.sh", "scripts/fedora35/tuning.sh", "scripts/fedora35/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan4-hyperv"]
    scripts             = ["scripts/devuan4/apt.sh", "scripts/devuan4/network.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-devuan4-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/devuan4/floppy.sh", "scripts/devuan4/vagrant.sh", "scripts/devuan4/motd.sh", "scripts/devuan4/virtualbox.sh", "scripts/devuan4/parallels.sh", "scripts/devuan4/vmware.sh", "scripts/devuan4/qemu.sh", "scripts/devuan4/cleanup.sh"]
    start_retry_timeout = "15m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2204-hyperv"]
    scripts             = ["scripts/ubuntu2204/apt.sh", "scripts/ubuntu2204/floppy.sh", "scripts/ubuntu2204/fixkvp.sh", "scripts/ubuntu2204/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2204-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu2204/vagrant.sh", "scripts/ubuntu2204/profile.sh", "scripts/ubuntu2204/motd.sh", "scripts/ubuntu2204/fixtty.sh", "scripts/ubuntu2204/virtualbox.sh", "scripts/ubuntu2204/parallels.sh", "scripts/ubuntu2204/vmware.sh", "scripts/ubuntu2204/qemu.sh", "scripts/ubuntu2204/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora36-hyperv"]
    scripts             = ["scripts/fedora36/fixdns.sh", "scripts/fedora36/hostname.sh", "scripts/fedora36/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora36-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora36/fixtmp.sh", "scripts/fedora36/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora36-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora36/kernel.sh", "scripts/fedora36/updatedb.sh", "scripts/fedora36/vga.sh", "scripts/fedora36/virtualbox.sh", "scripts/fedora36/parallels.sh", "scripts/fedora36/vmware.sh", "scripts/fedora36/qemu.sh", "scripts/fedora36/vagrant.sh", "scripts/fedora36/tuning.sh", "scripts/fedora36/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel9-hyperv"]
    scripts             = ["scripts/rhel9/network.sh", "scripts/rhel9/dnf.sh", "scripts/rhel9/base.sh", "scripts/rhel9/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rhel9-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/rhel9/kernel.sh", "scripts/rhel9/floppy.sh", "scripts/rhel9/virtualbox.sh", "scripts/rhel9/parallels.sh", "scripts/rhel9/vmware.sh", "scripts/rhel9/qemu.sh", "scripts/rhel9/vagrant.sh", "scripts/rhel9/tuning.sh", "scripts/rhel9/sshd.sh", "scripts/rhel9/randomness.sh", "scripts/rhel9/updatedb.sh", "scripts/rhel9/cleanup.sh", "scripts/rhel9/undnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos8s-hyperv"]
    scripts             = ["scripts/centos8s/network.sh", "scripts/centos8s/dnf.sh", "scripts/centos8s/base.sh", "scripts/centos8s/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos8s-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/centos8s/kernel.sh", "scripts/centos8s/floppy.sh", "scripts/centos8s/virtualbox.sh", "scripts/centos8s/parallels.sh", "scripts/centos8s/vmware.sh", "scripts/centos8s/qemu.sh", "scripts/centos8s/lvm.sh", "scripts/centos8s/vagrant.sh", "scripts/centos8s/tuning.sh", "scripts/centos8s/sshd.sh", "scripts/centos8s/randomness.sh", "scripts/centos8s/updatedb.sh", "scripts/centos8s/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos9s-hyperv"]
    scripts             = ["scripts/centos9s/network.sh", "scripts/centos9s/dnf.sh", "scripts/centos9s/base.sh", "scripts/centos9s/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-centos9s-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/centos9s/kernel.sh", "scripts/centos9s/floppy.sh", "scripts/centos9s/virtualbox.sh", "scripts/centos9s/parallels.sh", "scripts/centos9s/vmware.sh", "scripts/centos9s/qemu.sh", "scripts/centos9s/vagrant.sh", "scripts/centos9s/tuning.sh", "scripts/centos9s/sshd.sh", "scripts/centos9s/randomness.sh", "scripts/centos9s/updatedb.sh", "scripts/centos9s/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "/bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine316-hyperv"]
    scripts             = ["scripts/alpine316/network.sh", "scripts/alpine316/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine316-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine316/hostname.sh", "scripts/alpine316/lsb.sh", "scripts/alpine316/floppy.sh", "scripts/alpine316/vagrant.sh", "scripts/alpine316/sshd.sh", "scripts/alpine316/virtualbox.sh", "scripts/alpine316/parallels.sh", "scripts/alpine316/vmware.sh", "scripts/alpine316/qemu.sh", "scripts/alpine316/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alma9-hyperv"]
    scripts             = ["scripts/alma9/network.sh", "scripts/alma9/dnf.sh", "scripts/alma9/base.sh", "scripts/alma9/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alma9-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alma9/kernel.sh", "scripts/alma9/floppy.sh", "scripts/alma9/virtualbox.sh", "scripts/alma9/parallels.sh", "scripts/alma9/vmware.sh", "scripts/alma9/qemu.sh", "scripts/alma9/vagrant.sh", "scripts/alma9/tuning.sh", "scripts/alma9/sshd.sh", "scripts/alma9/randomness.sh", "scripts/alma9/updatedb.sh", "scripts/alma9/cleanup.sh", "scripts/alma9/undnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle9-hyperv"]
    scripts             = ["scripts/oracle9/network.sh", "scripts/oracle9/dnf.sh", "scripts/oracle9/base.sh", "scripts/oracle9/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle9-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/oracle9/kernel.sh", "scripts/oracle9/floppy.sh", "scripts/oracle9/virtualbox.sh", "scripts/oracle9/parallels.sh", "scripts/oracle9/vmware.sh", "scripts/oracle9/qemu.sh", "scripts/oracle9/vagrant.sh", "scripts/oracle9/tuning.sh", "scripts/oracle9/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rocky9-hyperv"]
    scripts             = ["scripts/rocky9/network.sh", "scripts/rocky9/dnf.sh", "scripts/rocky9/base.sh", "scripts/rocky9/reboot.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-rocky9-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/rocky9/kernel.sh", "scripts/rocky9/floppy.sh", "scripts/rocky9/virtualbox.sh", "scripts/rocky9/parallels.sh", "scripts/rocky9/vmware.sh", "scripts/rocky9/qemu.sh", "scripts/rocky9/vagrant.sh", "scripts/rocky9/tuning.sh", "scripts/rocky9/sshd.sh", "scripts/rocky9/randomness.sh", "scripts/rocky9/updatedb.sh", "scripts/rocky9/cleanup.sh", "scripts/rocky9/undnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle6-hyperv"]
    scripts             = ["scripts/oracle6/yum.sh", "scripts/oracle6/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-oracle6-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/oracle6/kernel.sh", "scripts/oracle6/floppy.sh", "scripts/oracle6/virtualbox.sh", "scripts/oracle6/parallels.sh", "scripts/oracle6/vmware.sh", "scripts/oracle6/qemu.sh", "scripts/oracle6/vagrant.sh", "scripts/oracle6/tuning.sh", "scripts/oracle6/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2210-hyperv"]
    scripts             = ["scripts/ubuntu2210/apt.sh", "scripts/ubuntu2210/floppy.sh", "scripts/ubuntu2210/fixkvp.sh", "scripts/ubuntu2210/network.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-ubuntu2210-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/ubuntu2210/vagrant.sh", "scripts/ubuntu2210/profile.sh", "scripts/ubuntu2210/motd.sh", "scripts/ubuntu2210/fixtty.sh", "scripts/ubuntu2210/virtualbox.sh", "scripts/ubuntu2210/parallels.sh", "scripts/ubuntu2210/vmware.sh", "scripts/ubuntu2210/qemu.sh", "scripts/ubuntu2210/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora37-hyperv"]
    scripts             = ["scripts/fedora37/fixdns.sh", "scripts/fedora37/hostname.sh", "scripts/fedora37/dnf.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora37-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora37/fixtmp.sh", "scripts/fedora37/base.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    only                = ["generic-fedora37-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/fedora37/kernel.sh", "scripts/fedora37/updatedb.sh", "scripts/fedora37/vga.sh", "scripts/fedora37/virtualbox.sh", "scripts/fedora37/parallels.sh", "scripts/fedora37/vmware.sh", "scripts/fedora37/qemu.sh", "scripts/fedora37/vagrant.sh", "scripts/fedora37/tuning.sh", "scripts/fedora37/cleanup.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "/bin/sh '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine317-hyperv"]
    scripts             = ["scripts/alpine317/network.sh", "scripts/alpine317/apk.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    execute_command     = "{{ .Vars }} /bin/bash '{{ .Path }}'"
    expect_disconnect   = "true"
    only                = ["generic-alpine317-hyperv"]
    pause_before        = "2m0s"
    scripts             = ["scripts/alpine317/hostname.sh", "scripts/alpine317/lsb.sh", "scripts/alpine317/floppy.sh", "scripts/alpine317/vagrant.sh", "scripts/alpine317/sshd.sh", "scripts/alpine317/virtualbox.sh", "scripts/alpine317/parallels.sh", "scripts/alpine317/vmware.sh", "scripts/alpine317/qemu.sh", "scripts/alpine317/cache.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }

  provisioner "shell" {
    expect_disconnect   = "true"
    scripts             = ["scripts/common/motd.sh", "scripts/common/keys.sh", "scripts/common/machine.sh", "scripts/common/leases.sh", "scripts/common/localtime.sh", "scripts/common/zerodisk.sh", "scripts/common/lockout.sh"]
    start_retry_timeout = "45m"
    timeout             = "2h0m0s"
  }


  # could not parse template for following block: "template: hcl2_upgrade:6: unexpected \"\\\\\" in operand"
  post-processors {
    post-processor "vagrant" {
      keep_input_artifact  = false
      compression_level    = 9
      include              = ["tpl/generic/info.json"]
      output               = "output/generic-{{split build_name \"-\" 1}}-{{split build_name \"-\" 2}}-{{user `box_version`}}.box"
      vagrantfile_template = "tpl/generic-{{split build_name \"-\" 1}}.rb"
    }
    post-processor "checksum" {
      keep_input_artifact = false
      checksum_types      = ["sha256"]
      output              = "output/generic-{{split build_name \"-\" 1}}-{{split build_name \"-\" 2}}-{{user `box_version`}}.box.sha256"
    }
  }

  # could not parse template for following block: "template: hcl2_upgrade:6: unexpected \"\\\\\" in operand"
  post-processors {
    post-processor "vagrant" {
      keep_input_artifact  = false
      compression_level    = 9
      include              = ["tpl/roboxes/info.json"]
      output               = "output/roboxes-{{split build_name \"-\" 1}}-{{split build_name \"-\" 2}}-{{user `box_version`}}.box"
      vagrantfile_template = "tpl/roboxes-{{split build_name \"-\" 1}}.rb"
    }
    post-processor "checksum" {
      keep_input_artifact = false
      checksum_types      = ["sha256"]
      output              = "output/roboxes-{{split build_name \"-\" 1}}-{{split build_name \"-\" 2}}-{{user `box_version`}}.box.sha256"
    }
  }
}
