####################################
# DevOps Traoining VM Installation #
####################################

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
     # DevOps training worker vm
     config.vm.define "devops" do |devops|
        devops.vm.box = "bento/ubuntu-14.04"
        devops.vm.box_check_update = true

        devops.vm.provider "virtualbox" do |v|
            v.memory = 2048
            v.cpus = 2
            v.customize ["modifyvm", :id, "--nicpromisc2", "allow-all", "--ioapic", "on"]
        end
        
        devops.vm.network "forwarded_port", guest: 5000, host: 5000
        devops.vm.network "forwarded_port", guest: 2375, host: 3375


        devops.vm.hostname = "devops01"
        devops.ssh.forward_agent = true

        # Post guest installation and customisation of core services
        devops.vm.provision :shell, path: "scripts/devops-os.sh"
        # Install the DevOps tools 
        devops.vm.provision :shell, path: "scripts/devops-devtools.sh"
        # Get devops running Docker and Docker machine
        devops.vm.provision :shell, path: "scripts/devops-docker.sh"
        # Install Rexray 
        devops.vm.provision :shell, path: "scripts/devops-rexrayinstall.sh"

     end
end
