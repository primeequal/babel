Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "bootstrap/bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 4567
  config.vm.provision :shell, inline: "sed 's/127\.0\.0\.1.*k8node.*/10.0.2.2 k8node-0/' -i /etc/hosts"
end
