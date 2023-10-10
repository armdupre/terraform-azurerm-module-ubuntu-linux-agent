locals {
	AdminUserName = var.AdminUserName
	DisablePasswordAuthentication = var.DisablePasswordAuthentication
	DnsLabel = "${local.Preamble}-dns"
	EnableAcceleratedNetworking = var.EnableAcceleratedNetworking
	EnableIpForwarding = var.EnableIpForwarding
	Eth0IpAddress = var.Eth0IpAddress
	Eth0Name = "${local.Preamble}-eth0"
	Eth0PublicIpAddressName = "${local.Preamble}-eth0-public-ip"
	Eth0SubnetId = var.Eth0SubnetId
	Eth1IpAddresses = var.Eth1IpAddresses
	Eth1Name = "${local.Preamble}-eth1"
	Eth1SubnetId = var.Eth1SubnetId
	ImagePlanId = local.ImageSku
	ImageSku = var.ImageSku
	ImageVersion = var.ImageVersion
	InstanceId = var.InstanceId
	InstanceName = "${local.Preamble}-instance"
	MarketplaceImageOfferId = var.MarketplaceImageOfferId
	MarketplaceImageProductId = local.MarketplaceImageOfferId
	MarketplaceImagePublisherId = var.MarketplaceImagePublisherId
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}"
	ResourceGroupLocation = var.ResourceGroupLocation
	ResourceGroupName = var.ResourceGroupName
	SshKeyName = var.SshKeyName
	Tag = var.Tag
	UserEmailTag = var.UserEmailTag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	Version = var.Version
	VmSize = var.VmSize
}

locals {
	init_cli = <<-EOF
#!/bin/bash -xe
curl -sL https://aka.ms/InstallAzureCLIDeb | bash
az --help
apt-get install -y iperf3
apt-get install -y iperf
uname -a
    EOF
}