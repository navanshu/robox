
variable "box_version" {
  type    = string
  default = "${env("VERSION")}"
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

build {
  sources = ["source.hyperv-iso.generic-ubuntu2204-hyperv"]

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

}
