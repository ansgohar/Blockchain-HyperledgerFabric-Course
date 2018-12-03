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
```
git clone https://github.com/ansgohar/Blockchain-HyperledgerFabric-Course.git
chmod u+x -R ~/Blockchain-HyperledgerFabric-Course/
```

# Installing pre-requisites
* Navigate to `DevelopmentEnv/pre-requisites/`
```
cd ~/Blockchain-HyperledgerFabric-Course/DevelopmentEnv/pre-requisites/
```
* Execute the script file to download and setup the pre-requisites
```
chmod u+x prereqs-ubuntu.sh
./prereqs-ubuntu.sh
```
* Logout from the Ubuntu session

# Installing Development Environment.

* Set up your IDE
Whilst the browser app can be used to work on your Business Network code, most users will prefer to work in an IDE. Our favourite is VSCode, because a Composer extension is available.

Install VSCode from this URL: https://code.visualstudio.com/download `sudo dpkg -i code_1.28.1-1539281690_amd64.deb`

Open VSCode, Open the Cloned Repo

* Use the scripts located at `DevelopmentEnv/scripts` to download a local Hyperledger Fabric v1.3 runtime:
```
cd ~/Blockchain-HyperledgerFabric-Course/fabric-samples/scripts
chmod u+x bootstrap.sh
./bootstrap.sh 1.3.0 1.3.0 0.4.13
```

* Controlling your dev environment
The first time you start up a new runtime, you'll need to run the start script:
```
cd ~/Blockchain-HyperledgerFabric-Course/fabric-samples/fabcar/
chmod u+x startFabric.sh
./startFabric.sh
docker rm -f $(docker ps -aq)
```

# Installing Node-Red Environment.
1- Before you can install Node-RED, you must have a working install of Node.js. We recommend the use of Node.js LTS 8.x.
```
node -v
```

2- Install Node-RED useing the node package manager
```
sudo npm install -g  node-red
```

3- Check It's working well 
```
node-red
```

4- Open Node Red web client
http://127.0.0.1:1880/
