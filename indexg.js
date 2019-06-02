
 // future code goes here
if (typeof web3 !== 'undefined') 
{
 web3 = new Web3(web3.currentProvider);
 } 
else 
{
 // set the provider you want from Web3.providers
web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8546"));
 }
web3.eth.defaultAccount = web3.eth.accounts[0];
var CoursesContract = web3.eth.contract([
	{
		"constant": false,
		"inputs": [
			{
				"name": "k",
				"type": "uint256"
			},
			{
				"name": "log",
				"type": "bytes32"
			}
		],
		"name": "detail",
		"outputs": [
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			},
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "log",
				"type": "bytes32"
			}
		],
		"name": "get",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "usr",
				"type": "bytes32"
			},
			{
				"name": "rid",
				"type": "bytes32"
			}
		],
		"name": "getkey",
		"outputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "uid",
				"type": "bytes32"
			},
			{
				"name": "records",
				"type": "string"
			},
			{
				"name": "recid",
				"type": "bytes32"
			},
			{
				"name": "hs",
				"type": "string"
			},
			{
				"name": "pr",
				"type": "string"
			},
			{
				"name": "pt",
				"type": "string"
			},
			{
				"name": "ky",
				"type": "string"
			}
		],
		"name": "login",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "User",
				"type": "bytes32"
			},
			{
				"name": "name",
				"type": "string"
			},
			{
				"name": "pub",
				"type": "string"
			}
		],
		"name": "reg",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "Address",
		"outputs": [
			{
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "agent",
		"outputs": [
			{
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "Name",
		"outputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "pubkey",
		"outputs": [
			{
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "rec",
		"outputs": [
			{
				"name": "",
				"type": "uint8"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "bytes32"
			}
		],
		"name": "regsum",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "UserId",
		"outputs": [
			{
				"name": "",
				"type": "bytes32"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	}
]);

var Courses = CoursesContract.at('0x34f8978a1280b4d4bf3061150561a5cc0f9ecffb');

