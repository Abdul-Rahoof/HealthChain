//window.alert(CryptoJS.AES.encrypt('my message', 'secret key 123'));


 // future code goes here
if (typeof web3 !== 'undefined') 
{
 web3 = new Web3(web3.currentProvider);
 } 
else 
{
 // set the provider you want from Web3.providers
web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
 }
web3.eth.defaultAccount = web3.eth.accounts[0];
var CoursesContract = web3.eth.contract([
	{
		"constant": false,
		"inputs": [
			{
				"name": "uid",
				"type": "string"
			},
			{
				"name": "ui",
				"type": "bytes32"
			},
			{
				"name": "rid",
				"type": "bytes32"
			},
			{
				"name": "pr",
				"type": "bytes32"
			},
			{
				"name": "pt",
				"type": "bytes32"
			},
			{
				"name": "key",
				"type": "string"
			}
		],
		"name": "addper",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "uid",
				"type": "string"
			},
			{
				"name": "ui",
				"type": "bytes32"
			},
			{
				"name": "rid",
				"type": "bytes32"
			},
			{
				"name": "pr",
				"type": "bytes32"
			},
			{
				"name": "pt",
				"type": "bytes32"
			},
			{
				"name": "key",
				"type": "string"
			}
		],
		"name": "addperg",
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
				"name": "pub",
				"type": "string"
			}
		],
		"name": "addpub",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "ur",
				"type": "bytes32"
			},
			{
				"name": "dr",
				"type": "bytes32"
			}
		],
		"name": "addvote",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "ur",
				"type": "bytes32"
			},
			{
				"name": "dr",
				"type": "bytes32"
			}
		],
		"name": "addvotem",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
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
				"name": "lo",
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
				"name": "pt",
				"type": "bytes32"
			},
			{
				"name": "rid",
				"type": "bytes32"
			}
		],
		"name": "getper",
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
			}
		],
		"name": "getpub",
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
				"name": "usr",
				"type": "bytes32"
			},
			{
				"name": "thr",
				"type": "bytes32"
			},
			{
				"name": "rid",
				"type": "bytes32"
			}
		],
		"name": "getrenc",
		"outputs": [
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
		"inputs": [],
		"name": "getv",
		"outputs": [
			{
				"name": "",
				"type": "uint8"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [],
		"name": "getvm",
		"outputs": [
			{
				"name": "",
				"type": "uint8"
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
				"name": "ur",
				"type": "bytes32"
			},
			{
				"name": "k",
				"type": "uint8"
			}
		],
		"name": "getvote",
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
				"name": "ur",
				"type": "bytes32"
			},
			{
				"name": "k",
				"type": "uint8"
			}
		],
		"name": "getvotem",
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
				"name": "recname",
				"type": "string"
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
				"type": "bytes32"
			},
			{
				"name": "pt",
				"type": "bytes32"
			},
			{
				"name": "ky",
				"type": "string"
			},
			{
				"name": "ky2",
				"type": "string"
			},
			{
				"name": "ipfs",
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
				"name": "name",
				"type": "string"
			},
			{
				"name": "User",
				"type": "bytes32"
			},
			{
				"name": "usr",
				"type": "string"
			},
			{
				"name": "code",
				"type": "uint8"
			}
		],
		"name": "reg",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "name",
				"type": "string"
			},
			{
				"name": "id",
				"type": "string"
			},
			{
				"name": "User",
				"type": "bytes32"
			}
		],
		"name": "regminer",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "uid",
				"type": "string"
			},
			{
				"name": "ui",
				"type": "bytes32"
			},
			{
				"name": "rid",
				"type": "bytes32"
			},
			{
				"name": "pr",
				"type": "bytes32"
			},
			{
				"name": "pt",
				"type": "bytes32"
			}
		],
		"name": "removeper",
		"outputs": [],
		"payable": false,
		"type": "function",
		"stateMutability": "nonpayable"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "k",
				"type": "uint256"
			},
			{
				"name": "pt",
				"type": "bytes32"
			},
			{
				"name": "rid",
				"type": "bytes32"
			}
		],
		"name": "viewper",
		"outputs": [
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
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "bytes32"
			}
		],
		"name": "vote",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"type": "function",
		"stateMutability": "view"
	}
]);

var Courses = CoursesContract.at('0x55057fada9d7db908713c9757263d7da347e3793');


