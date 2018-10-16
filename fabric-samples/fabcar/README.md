# Strart Fabcar Blockchain Environment runtime.
Controlling your dev environment The first time you start up a new runtime, you'll need to run the start script:
```
cd ~/Blockchain-HyperledgerFabric-Course/fabric-samples/fabcar/
chmod u+x startFabric.sh
./startFabric.sh
```
To remove the docker images
```
docker rm -f $(docker ps -aq)
```
