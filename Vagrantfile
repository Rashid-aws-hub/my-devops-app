Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
  end

  # WEB SERVER
  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/jammy64"
    web.vm.network "private_network", ip: "192.168.56.10"
  end

  # APP SERVER
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/jammy64"
    app.vm.network "private_network", ip: "192.168.56.11"
  end

  # DATABASE SERVER
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/jammy64"
    db.vm.network "private_network", ip: "192.168.56.12"
  end

  # JENKINS SERVER
  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "ubuntu/jammy64"
    jenkins.vm.hostname = "jenkins"

    jenkins.vm.network "private_network", ip: "192.168.56.30"

    jenkins.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  end

end