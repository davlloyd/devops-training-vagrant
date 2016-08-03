DevOps Training Bootcamp Self Contained Toolset VM


Prerequisites
1) Install git
2) Install Vagrant
3) Install Virtualbox
    A) Disable account authentication for virtualbox web server 'VBoxManage setproperty websrvauthlibrary null'
    B) Run Virtualbox web service 'vboxwebsrv -H 0.0.0.0'
4) Clone repository to local directory 'git clone https://github.com/davlloyd/devops-training-vagrant.git'


Get it Running
1) Change into directory repo was cloned into
2) run command 'vagrant up'
3) Access guest via 'vagrant ssh'

Further details:
- port 5000 is redirected as 5000 on localhost for script testing
- Port 2375 is redriected as 3375 so that you can use the VMs docker engine locally (SET DOCKER_HOST=tcp://localhost:3375)
- Text editors are installed in guest (VIM and Nano) but you can edit/create scripts via the <clonedir>/work directory which is mounted as /vagrant/work in the guest



