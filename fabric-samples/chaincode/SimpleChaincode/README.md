# Starting The Updated SimpleChaincode Application

1- Start the example use command 
```
cd ~/Blockchain-HyperledgerFabric-Course/fabric-samples/chaincode/SimpleChaincode
```

1.1- Go Example
```
./startFabric.sh golang
```
1.2- Node Example
```
./startFabric.sh node
```
1.3- Java Example
```
./startFabric.sh java
```

2- Clean running Docker containers
```
docker rm -f $(docker ps -aq)
```



