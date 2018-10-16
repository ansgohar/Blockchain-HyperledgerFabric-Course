#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
# Exit on first error
set -e

# don't rewrite paths for Windows Git Bash users
export MSYS_NO_PATHCONV=1
starttime=$(date +%s)
LANGUAGE=${1:-"golang"}
CC_SRC_PATH=github.com/SimpleChaincode/go
if [ "$LANGUAGE" = "node" -o "$LANGUAGE" = "NODE" ]; then
	CC_SRC_PATH=/opt/gopath/src/github.com/SimpleChaincode/node
fi

if [ "$LANGUAGE" = "java" -o "$LANGUAGE" = "JAVA" ]; then
	CC_SRC_PATH=/opt/gopath/src/github.com/SimpleChaincode/java
fi
# clean the keystore
rm -rf ./hfc-key-store

# launch network; create channel and join peer to channel
cd ../../basic-network
./start.sh

# Now launch the CLI container in order to install, instantiate chaincode
# and prime the ledger with our 10 cars
docker-compose -f ./docker-compose.yml up -d cli

docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp" cli peer chaincode install -n simplechaincode -v 1.0 -p "$CC_SRC_PATH" -l "$LANGUAGE"
docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp" cli peer chaincode instantiate -o orderer.example.com:7050 -C mychannel -n simplechaincode -l "$LANGUAGE" -v 1.0 -c '{"Args":["init","a","10","b","20"]}' -P "OR ('Org1MSP.member','Org2MSP.member')"
sleep 10
printf "Querying initial valu of (a)"
docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp" cli peer chaincode query -o orderer.example.com:7050 -C mychannel -n simplechaincode -c '{"function":"query","Args":["a"]}'

printf "\nTotal setup execution time : $(($(date +%s) - starttime)) secs ...\n\n\n"


