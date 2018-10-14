# Setup the Environment

# Maintain the Ubuntu OS
1- Download Virtualization software
https://www.virtualbox.org/wiki/Downloads

2- Download Ubuntu 16.04 Desktop ISO
https://www.ubuntu.com/download/alternative-downloads

3- Install Ubuntu Over VM

4- Update OS Packages
```
sudo apt-get update
sudo apt-get upgrade
```

5- Install Prerequisite
```
sudo apt install git
sudo apt install curl
sudo apt install npm
```

6- Clone the Repo
git clone https://github.com/ansgohar/Blockchain-HyperledgerFabric-Course.git

# Installing pre-requisites
* Navigate to the location `DevelopmentEnv/pre-requisites/`
* Run the following script to grand access to the script file
```
chmod u+x prereqs-ubuntu.sh
```
* Execute the script file to download and setup the pre-requisites
```
./prereqs-ubuntu.sh
```

# Installing Development Environment.

* Set up your IDE
Whilst the browser app can be used to work on your Business Network code, most users will prefer to work in an IDE. Our favourite is VSCode, because a Composer extension is available.

Install VSCode from this URL: https://code.visualstudio.com/download `sudo dpkg -i code_1.28.1-1539281690_amd64.deb`

Open VSCode, Open the Cloned Repo

* Use the scripts located at `DevelopmentEnv/scripts` to download a local Hyperledger Fabric v1.3 runtime:
```
cd ~/Blockchain-HyperledgerFabric-Course/DevelopmentEnv/scripts
./bootstrap.sh 1.3.0 1.3.0 0.4.13
```

* Controlling your dev environment
The first time you start up a new runtime, you'll need to run the start script, then generate a PeerAdmin card:
```
cd ~/fabric-dev-servers
export FABRIC_VERSION=hlfv13
./startFabric.sh
./createPeerAdminCard.sh
```
