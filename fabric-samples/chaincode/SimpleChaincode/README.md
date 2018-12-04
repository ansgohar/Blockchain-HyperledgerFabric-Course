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

# Integration Section

1- Starting The Updated SimpleChaincode Application.
```
cd ~/Blockchain-HyperledgerFabric-Course/fabric-samples/chaincode/SimpleChaincode
./startFabric.sh golang
```

2- Change dir to ( client ) folder and execute below commands 
```
cd client
```
3- Download the deplendencies
```
npm install
```
4- Register Admin User
```
node registerAdmin.js
```
5- Register User
```
node registerUser.js
```
6- Start Client Application
```
node server.js
```

7- Start Node-RED in another tab using below command 
```
node-red
```

7.1- Open file (Node-RED ) copy content to clipboard 

7.2- Open browser and navigate to 
http://127.0.0.1:1880

7.3- From node-red interface use import option to import from clipboard 

7.4 Debug the response of the request

8- Stop the Node-Red Application

9-Clean running Docker containers
```
docker rm -f $(docker ps -aq)
```
