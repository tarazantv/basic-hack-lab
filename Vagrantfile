Vagrant.configure("2") do |config|
  config.vm.define "kali" do |kali|
    kali.vm.box = "kalilinux/rolling"
	kali.vm.network "public_network"
	config.vm.provision :shell, path: "bootstrap.sh", run: 'always'
    config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--vram", "128"]
    end
	config.vm.provision "shell", inline: <<-SHELL
		chmod +x bootstrap.sh
    SHELL
  end
  config.vm.define "target" do |target|
    target.vm.box = "rapid7/metasploitable3-win2k8"
    target.vm.box_version = "0.1.0-weekly"
    target.vm.network "private_network", ip: "192.168.1.11"
 end
end
