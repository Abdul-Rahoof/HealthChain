pragma solidity ^0.4.11;
// specifies what version of compiler this code will be compiled with

contract Register{
    bytes32[10] public UserId;
    string[10]  public Name;
    address[10] public Address;
    address public agent;
    uint8 public rec;
    string[10] public pubkey;
    
    struct ppr{
      string ownName;
      string provName;
      //bytes32 provider;
      string  recordName;
      string hash;
      //string recName;
      
       string key;
       //string capsule;
       
      
     
    }
    struct smr{
     bytes32  ownerId;
     string ownerName ;  
     ppr[10] p;
     uint8 index;
     mapping (bytes32 => uint) recppr;
    } 
    
    /*modifier isOwner() {
    bool enable;
    if(msg.sender == agent) enable = true;
    
     if(!enable) revert();
     _;
    }
  function setAgent(address addr) private {
    agent = addr;
  }*/

    
  
    smr[10] sr;
    
    mapping (bytes32 => uint) public regsum;
   

    uint8 i=0;
   
    function reg(bytes32 User,string memory name,string memory pub) {
        /*for(uint j=0;j<i;j++){
            if(Address[j]==msg.sender)
               revert();
            if(UserId[j]==User)
               revert();
        }*/
        Address[i]=msg.sender;
        
        UserId[i]=User;
        Name[i]=name;
        pubkey[i]=pub;
        sr[i].ownerId=User;
        sr[i].ownerName=name;
        sr[i].index=0;
        
        regsum[User]=i;
        i=i+1;
        
    }
    function getkey(bytes32 usr, bytes32 rid)returns(string memory)
    {
        uint ad1=regsum[usr];
        uint j=sr[ad1].recppr[rid];
        return sr[ad1].p[j].key;
    }
    
    
    
    function login(bytes32 uid,string memory records,bytes32 recid,string memory hs,string memory pr,string memory pt,string memory ky)  
    {
         
         uint8 k;      
         uint ad1=regsum[uid];
     //    setAgent(Address[ad1]);
        // uint ad11=regsum[pt];
         //if(!(Address[ad1]==msg.sender))
         //     revert();
         k=sr[ad1].index;
         k=k+1;
         sr[ad1].index=k;
         sr[ad1].p[k].provName=pr;
         sr[ad1].p[k].ownName=pt;
        // sr[ad1].p[k].provider=pr;
         sr[ad1].p[k].recordName=records;
         //sr[ad1].p[k].recName=recname;
         sr[ad1].p[k].hash=hs;
         sr[ad1].p[k].key=ky;
         //sr[ad1].p[k].capsule=cap;
         //bytes32 memory recid=bytes32(records);
         sr[ad1].recppr[recid]=k;
         
         // return pr;
    
    }
    
    
    
    function get(bytes32 log) returns(uint)
    {
        uint ad1=regsum[log];
        return sr[ad1].index;
    }
    function detail(uint k,bytes32 log) returns(string memory,string memory,string memory,string memory,string memory)
    {
        uint ad1=regsum[log];
        return (sr[ad1].p[k].ownName,sr[ad1].p[k].provName,sr[ad1].p[k].recordName,sr[ad1].p[k].hash,sr[ad1].p[k].key);
    }
}



