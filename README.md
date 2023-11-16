# Jenkins

## Requirements
1. Vagrant
2. Oracle VirtualBox 7.0.12+

## Setup
1. In the directory where the `vagrantfile` is located, run `vagrant up`. This will automatically download and start a `jenkins` box that is running Alpine linux. It's a very lightweight linux box. Username: `vagrant` and password: `vagrant`.
2. Copy `jenkins_install.sh` and `jenkins.service` to the home directory of the `jenkins` box created in step 1. To ssh into this box, `ssh vagrant@jenkins -p 17122`.
3. Run `jenkins_install.sh` as root user. The service will automatically start once Jenkins has been installed.
4. Login to Jenkins server to finish initialization: `http://localhost:17180/`
