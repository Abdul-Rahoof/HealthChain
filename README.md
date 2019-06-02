# HealthChain
A Secure Scalable Health Care Data Management System Using Blockchain

HealthChain provides a secure health care record management system with scalability and low storage space. HealthChain divides the whole system into regions and uses two kinds of blockchains, Private Blockchain: for intra-regional communication and, Consortium Blockchain: for inter-regional communication. The propsed system utilized consensus mechanism for mining. So the miners are also the users of the blockchain. The doctors who got the votes higher than the half of the miners can only add record into blockchan.


## Installation

### 1. Install Ganache-cli
     It can be cloned from git. or install using the command
     ```bash
       sudo apt-get install ganache-cli
     ```
### 2. Install web3.js     
### 3. Install IPFS
### 4. Install WAAMP

## Usage
### 1. Specify the path of the php and ipfs to the same directory as the installed.
### 2. Run ganache-cli and ipfs:
####     For private blockchain one,
     open Terminal and type  
     ```bash
      ganache-cli -p 8545
     ```
####     For private blockchain two,    
    open new Terminal and type  
     ```bash
      ganache-cli -p 8546
      
####    For consortium blockchain,      
      open new Terminal and type  
     ```bash
      ganache-cli -p 8547
####    IPFS     
     open new Terminal and type
     ```bash
       ipfs daemon
     ```
     
### 3. Run the solidity code in Remix IDE( online tool).
#### 3.1 compile the private.sol code in the Remix IDE and paste the the contact address in the index.js file.
#### 3.2 open index.html( Web for blockchain one)
#### 3.3 compile the private.sol code again in the Remix IDE and paste the the contact address in the index.js file.
#### 3.4 open index.html ( Web for blockchain two)
#### 3.5 compile the consortium.sol code in the Remix IDE and paste the the contact address in the indexg.js file.
##  Use the code in the proper way.
### All users except miners should generate keys and add to the blockchain.

