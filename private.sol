
pragma solidity ^0.4.11;
// specifies what version of compiler this code will be compiled with

contract Register{
    bytes32[30] public UserId;
    string[30]  public Name;
    string[30] public pubkey;
    address[30] public Address;
    address public agent;
    uint8 public rec;
    bytes32[30] miner;
    bytes32[30] provs;
    uint8 m=0;
    uint8 p=0;
    mapping (bytes32 => uint) public vote;
    
    struct ppr{
      string ownName;
      string provName;
      bytes32 provider;
      string  recordName;
      string hash;
      string recName;
      uint8 index;
      string key;
      // string capsule;
      string ipfshs;
      mapping (bytes32 => uint8) userper;
      per[30] pr;
      
    }
    struct miners{
      string name;
      string id;
      bytes32[30] prov; 
      bytes32[30] mins;
      uint8 mn;
      uint8 pr;  
    }
    mapping (bytes32 => uint) regmin;
    
    struct smr{
     bytes32  ownerId;
     string ownerName ; 
     string ownid;
     ppr[30] p;
     uint8 index;
     uint8 code;
     //bytes32[30 prov;
     //uint8 pr;
     //bytes32[30 min;
     mapping (bytes32 => uint) recppr;
    } 
    
    struct per{
        string uid;
        string key;
        //string capsule;
        
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
    function getvote(bytes32 ur,uint8 k)returns(string memory,string memory,uint){
            uint le=regmin[ur];
            uint f=0;
            bytes32 dr=provs[k];
            for(uint l=0;l<mr[le].pr;l++){
            if(dr==mr[le].prov[l])
                {
                    f=1;
                    break;
                }
            }
            if(f==1)
                revert();
                
            uint j=regsum[dr];
            return (sr[j].ownerName,sr[j].ownid,vote[dr]);
    } 
    function getvotem(bytes32 ur,uint8 k)returns(string memory,string memory,uint){
            uint le=regmin[ur];
            uint f=0;
            bytes32 dr=miner[k];
            for(uint l=0;l<mr[le].mn;l++){
            if(dr==mr[le].mins[l])
                {
                    f=1;
                    break;
                }
            }
            if(f==1)
                revert();
                
            //uint j=regsum[dr];
            le=regmin[dr];
            return  (mr[le].name,mr[le].id,vote[dr]);
    }
    function getv()returns(uint8) {
        
        
        return p;    
    }
    function getvm()returns(uint8) {
        
        
        return m;    
    } 
    
    function addvote(bytes32 ur,bytes32 dr){
         uint le=regmin[ur];
         if(le<3 || vote[ur]>=m/2){
        for(uint k=0;k<m;k++)
         {
             if(ur==miner[k])
                break;
         }
         
        if(k==m)
            revert();
       
        uint f=0;
        
            for(uint l=0;l<mr[le].pr;l++){
            if(dr==mr[le].prov[l])
                {
                    f=1;
                    break;
                }
            }
            
        if(f==1)
          revert();
          for(k=0;k<p;k++)
          {
              if(dr==provs[k])
              {
                  break;
              }
              
          }
          if(k==p)
             revert();
        uint8 x=mr[le].pr;
        mr[le].prov[x]=dr;
        x=x+1;
        mr[le].pr=x;
        uint j=regsum[dr];
       
        vote[dr]=vote[dr]+1;
         }
         else 
           revert();
    }   
    
    
    function addvotem(bytes32 ur,bytes32 dr){
        uint le=regmin[ur];
        if(le<3 || vote[ur]>=m/2){
        for(uint k=0;k<m;k++)
         {
             if(ur==miner[k])
                break;
         }
         
        if(k==m)
            revert();
        
        uint f=0;
        
            for(uint l=0;l<mr[le].mn;l++){
            if(dr==mr[le].mins[l])
                {
                    f=1;
                    break;
                }
            }
            
        if(f==1)
          revert();
          for(k=3;k<m;k++)
          {
              if(dr==miner[k])
              {
                  break;
              }
              
          }
          if(k==p)
             revert();
        uint8 x=mr[le].mn;
        mr[le].mins[x]=dr;
        x=x+1;
        mr[le].mn=x;
        //uint j=regsum[dr];
       
        vote[dr]=vote[dr]+1;
        }
        else 
          revert();
    }   
    
    smr[30] sr;
    miners[30] mr;
    mapping (bytes32 => uint) public regsum;
    
    uint8 i=0;
    function addpub(bytes32 User,string memory pub)
    {
        uint j=regsum[User];
        
        pubkey[j]=pub;
    }
    function getpub(bytes32 usr)returns(string memory)
    {
         uint j=regsum[usr];
         return pubkey[j];
    }
    function getkey(bytes32 usr, bytes32 rid)returns(string memory)
    {
        uint ad1=regsum[usr];
        uint j=sr[ad1].recppr[rid];
        return sr[ad1].p[j].key;
    }
     function getrenc(bytes32 usr,bytes32 thr,bytes32 rid)returns(string memory, string memory){
         uint ad1=regsum[usr];
         uint j=sr[ad1].recppr[rid];
         uint ad11=regsum[thr];
         return (sr[ad1].p[j].key,pubkey[ad11]);
     }
    function regminer(string memory name,string memory id,bytes32 User){
        for(uint j=0;j<m;j++){
         //   if(Address[j]==msg.sender)
           //    revert();
            if(miner[j]==User)
               revert();
        }
        mr[m].name=name;
        mr[m].pr=0;
        mr[m].mn=0;
        mr[m].id=id;
        regmin[User]=m;
        miner[m]=User;
        m=m+1;
        vote[User]=0;
        
    }
    
    function reg(string memory name,bytes32 User,string memory usr,uint8 code) {
        for(uint j=0;j<i;j++){
         //   if(Address[j]==msg.sender)
           //    revert();
            if(UserId[j]==User)
               revert();
        }
        Address[i]=msg.sender;
        
        UserId[i]=User;
        Name[i]=name;
        
        sr[i].ownerId=User;
        sr[i].ownerName=name;
        sr[i].index=0;
        sr[i].code=code;
        sr[i].ownid=usr;
        regsum[User]=i;
        vote[User]=0;
        i=i+1;
        if(code==1)
           {
            provs[p]=User;
            p=p+1;
           }
    }
    
    function addper(string memory uid,bytes32 ui,bytes32 rid,bytes32 pr,bytes32 pt,string memory key)
    {
         
        uint j=regsum[pt];
        // if(!(Address[j]==msg.sender))
        //      revert();
        uint k=sr[j].recppr[rid];
        uint8 l=sr[j].p[k].index;
        
        //string memory key=sr[j].p[k].key;
        l=l+1;
        sr[j].p[k].index=l;
        sr[j].p[k].pr[l].uid=uid;
        sr[j].p[k].pr[l].key=key;
        sr[j].p[k].userper[ui]=l;
        //sr[j].p[k].pr[l].capsule=cap;
        j=regsum[pr];
        k=sr[j].recppr[rid];
        l=sr[j].p[k].index;
        
        l=l+1;
        sr[j].p[k].index=l;
        sr[j].p[k].pr[l].uid=uid;
        sr[j].p[k].pr[l].key=key;
        sr[j].p[k].userper[ui]=l;
        //sr[j].p[k].pr[l].capsule=cap; 
        
        uint t=regsum[ui];
        uint8 k1=sr[t].index;
         k1=k1+1;
         sr[t].index=k1;
         sr[t].p[k1].provName= sr[j].p[k].provName;
         sr[t].p[k1].ownName=sr[j].p[k].ownName;
         sr[t].p[k1].provider=sr[j].p[k].provider;
         sr[t].p[k1].recordName=sr[j].p[k].recordName;
         sr[t].p[k1].recName=sr[j].p[k].recName;
         sr[t].p[k1].hash=sr[j].p[k].hash;
         sr[t].p[k1].ipfshs=sr[j].p[k].ipfshs;
         sr[t].p[k1].key=key;
         //sr[t].p[k1].capsule=cap;
         //bytes32 memory recid=bytes32(records);
         sr[t].recppr[rid]=k1;
        
    }
     
    function removeper(string memory uid,bytes32 ui,bytes32 rid,bytes32 pr,bytes32 pt)
    {
         
        uint j=regsum[pt];
        // if(!(Address[j]==msg.sender))
        //      revert();
        uint k=sr[j].recppr[rid];
        //uint8 l=sr[j].p[k].index;
        //string memory key=sr[j].p[k].key;
        //l=l+1;
        uint8 l=sr[j].p[k].userper[ui];
        //sr[j].p[k].index=l;
        //sr[j].p[k].pr[l].uid=uid;
        sr[j].p[k].pr[l].key="Permission Removed";
        //sr[j].p[k].pr[l].capsule=cap;
        j=regsum[pr];
        k=sr[j].recppr[rid];
        //l=sr[j].p[k].index;
        l=sr[j].p[k].userper[ui];
        //l=l+1;
        //sr[j].p[k].index=l;
        //sr[j].p[k].pr[l].uid=uid;
        sr[j].p[k].pr[l].key="Permission Removed";
        //sr[j].p[k].pr[l].capsule=cap; 
        
        uint t=regsum[ui];
        uint k1=sr[j].recppr[rid];
         //k1=k1+1;
         //sr[t].index=k1;
         //sr[t].p[k1].provName= sr[j].p[k].provName;
         //sr[t].p[k1].ownName=sr[j].p[k].ownName;
         //sr[t].p[k1].provider=sr[j].p[k].provider;
         //sr[t].p[k1].recordName=sr[j].p[k].recordName;
         //sr[t].p[k1].recName=sr[j].p[k].recName;
         //sr[t].p[k1].hash=sr[j].p[k].hash;
         sr[t].p[k1].ipfshs="Permission Removed";
         sr[t].p[k1].key="Permission Removed";
         //sr[t].p[k1].capsule=cap;
         //bytes32 memory recid=bytes32(records);
         //sr[t].recppr[rid]=k1;
        
    } 
     
    function addperg(string memory uid,bytes32 ui,bytes32 rid,bytes32 pr,bytes32 pt,string memory key)
    {
         
        uint j=regsum[pt];
        // if(!(Address[j]==msg.sender))
        //      revert();
        uint k=sr[j].recppr[rid];
        uint8 l=sr[j].p[k].index;
        //string memory key=sr[j].p[k].key;
        l=l+1;
        sr[j].p[k].index=l;
        sr[j].p[k].pr[l].uid=uid;
        sr[j].p[k].pr[l].key=key;
        //sr[j].p[k].pr[l].capsule=cap;
        j=regsum[pr];
        k=sr[j].recppr[rid];
        l=sr[j].p[k].index;
        
        l=l+1;
        sr[j].p[k].index=l;
        sr[j].p[k].pr[l].uid=uid;
        sr[j].p[k].pr[l].key=key;
        //sr[j].p[k].pr[l].capsule=cap;
        
    } 
    
    
    
    function login(string memory recname,string memory records,bytes32 recid,string memory hs,bytes32 pr,bytes32 pt,string memory ky,string memory ky2,string memory ipfs)  
    {
         if(vote[pr]>=m/2){
         uint8 k;      
         uint ad1=regsum[pr];
     //    setAgent(Address[ad1]);
         uint ad11=regsum[pt];
         //if(!(Address[ad1]==msg.sender))
         //     revert();
         k=sr[ad1].index;
         k=k+1;
         sr[ad1].index=k;
         sr[ad1].p[k].provName=sr[ad1].ownerName;
         sr[ad1].p[k].ownName=sr[ad11].ownerName;
         sr[ad1].p[k].provider=pr;
         sr[ad1].p[k].recordName=records;
         sr[ad1].p[k].recName=recname;
         sr[ad1].p[k].hash=hs;
         sr[ad1].p[k].key=ky;
         //sr[ad1].p[k].capsule=cap;
         sr[ad1].p[k].ipfshs=ipfs;
         //bytes32 memory recid=bytes32(records);
         sr[ad1].recppr[recid]=k;
         k=sr[ad11].index;
         k=k+1;
         sr[ad11].index=k;
         sr[ad11].p[k].provName=sr[ad1].ownerName;
         sr[ad11].p[k].ownName=sr[ad11].ownerName;
         sr[ad11].p[k].provider=pr;
         sr[ad11].p[k].recordName=records;
         sr[ad11].p[k].recName=recname;
         sr[ad11].p[k].hash=hs;
         sr[ad11].p[k].key=ky2;
         //sr[ad11].p[k].capsule=cap;
         sr[ad11].p[k].ipfshs=ipfs;
         //recppr[records]=k;
         rec=rec+1;
         sr[ad11].recppr[recid]=k;
         // return pr;
         }
         else
           revert();
    }
    function viewper(uint k,bytes32 pt,bytes32 rid) returns(string memory,string memory){
        uint ad1=regsum[pt];
        uint j=sr[ad1].recppr[rid];
        //uint ind=sr[ad1].p[j].index;
        
        return (sr[ad1].p[j].pr[k].uid,sr[ad1].p[j].pr[k].key);
           
    }
    function getper(bytes32 pt,bytes32 rid) returns(uint)
    {
       uint ad1=regsum[pt];
       uint j=sr[ad1].recppr[rid];
       return sr[ad1].p[j].index; 
       //return 1;
        
    }
    
    function get(bytes32 lo) returns(uint)
    {
        uint ad1=regsum[lo];
        return sr[ad1].index;
    }
    function detail(uint k,bytes32 log) returns(string memory,string memory,string memory,string memory,string memory)
    {
        uint ad1=regsum[log];
        return (sr[ad1].p[k].ownName,sr[ad1].p[k].provName,sr[ad1].p[k].recordName,sr[ad1].p[k].ipfshs,sr[ad1].p[k].key);
    }
}



