# export FABRIC_CFG_PATH=${PWD}/config/
# export CORE_PEER_TLS_ENABLED=true

# export PEER0_ORG1_CA=${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
# export PEER0_ORG2_CA=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt

# # Setup Environment for Org1
# setGlobalsForPeer0Org1(){
#     export CORE_PEER_LOCALMSPID="Org1MSP"
#     export CORE_PEER_ID="Org1MSP"
#     export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
#     export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
#     export CORE_PEER_ADDRESS=localhost:7051
# }

# # Setup Environment for Org2
# setGlobalsForPeer0Org2(){
#     export CORE_PEER_LOCALMSPID="Org2MSP"
#     export CORE_PEER_ID="Org2MSP"
#     export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG2_CA
#     export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
#     export CORE_PEER_ADDRESS=localhost:8051
# }

# # Function to join Org1 to the channel
# joinChannel1(){
#     setGlobalsForPeer0Org1
#     peer channel join -b ./artifact/genesis.block
#     peer channel list
# }

# # Function to join Org2 to the channel
# joinChannel2(){
#     setGlobalsForPeer0Org2
#     peer channel join -b ./artifact/genesis.block
#     peer channel list
# }

export FABRIC_CFG_PATH=${PWD}/config

export CORE_PEER_ID="Org1MSP"
export CORE_PEER_LOCALMSPID="Org1MSP"

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051

peer channel join -b ./channel-artifacts/mychannel.block

peer channel list