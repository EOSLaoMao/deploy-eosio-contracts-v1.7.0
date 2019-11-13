
# Deploy eosio.contracts v1.7.1


## Prerequisites


We use [eosio.cdt 1.6.3](https://github.com/EOSIO/eosio.cdt/tree/v1.6.3) and [eosio 1.8.6](https://github.com/EOSIO/eos/tree/v1.8.6) to build [eosio.contracts v1.7.1](https://github.com/EOSIO/eosio.contracts/tree/v1.7.1) smart contract.


### 1. Prepare ICON_BASE_URL to serve action logos

eosio.contracts `v.1.7.x` introduced [ricardian-spec v0.2.0](https://github.com/EOSIO/ricardian-spec/tree/v0.2.0) which adds icon support in action ricardian clause. Along with this release, BlockOne team has also provided default icons for system contract actions under MIT license. In order to build an abi with accessible action icon url, you need to specify ICON_BASE_URL in contracts/CMakeLists.txt. 

in this case, we use `https://raw.githubusercontent.com/cryptokylin/eosio.contracts/v1.7.1/contracts/icons` as ICON_BASE_URL to build. [cryptokylin/eosio.contracts](https://github.com/cryptokylin/eosio.contracts/) is a fork of [eosio/eosio.contracts](https://github.com/eosio/eosio.contracts) maintained by CryptoKylin Testnet Developer Group.


### 2. Prepare Ricardian Clauses

Prepare ricardian caluses to make sure to use the same regproducer RC and EUA as on EOS Mainnet.

The EUA can be found in [EOS-Mainnet governance repo](https://github.com/EOS-Mainnet/governance/blob/master/eosio.system/eosio.system-clause-constitution-rc.md) and regproducer RC from [EOS42/regproduceupodate](https://github.com/eos42/regproduceupodate)

For other actions' RC, v1.7.1 release has a built in RC with slight wording change comparing to current EOS Mainnet RC, for details please refer to: https://github.com/EOSIO/eosio.contracts/tree/v1.7.1

You can find the v1.7.1 contract with regproducer RC and EUA updated here in branch [mainnet/v1.7.1](https://github.com/EOSLaoMao/eosio.contracts/tree/mainnet/v1.7.1) Please verify it accordingly.


### 3. Build and verify checksums:

#### Build:

clone branch [mainnet/v1.7.1](https://github.com/EOSLaoMao/eosio.contracts/tree/mainnet/v1.7.1) and build:

`./build.sh -c [eosio.cdt Path] -e [eosio Path]`

#### Verify checksums:

You can verify the build result under `build` folder once build succeed.

We have put our build under `contracts/1.7.1` for your review, which is used to deploy on EOS Mainnet.

Here are the checksums we got, please verify:

##### eosio.system:

```
openssl dgst -sha256 contracts/1.7.1/eosio.system/eosio.system.wasm
SHA256(contracts/1.7.1/eosio.system/eosio.system.wasm)= 2b10316f971a99ea99079a2104ddc95cc1bae2cddce80088e3c885875d82ac21

openssl dgst -sha256 contracts/1.7.1/eosio.system/eosio.system.abi
SHA256(contracts/1.7.1/eosio.system/eosio.system.abi)= d4c0c47784247f7aac6515b9a01e3a5f8280a5e6f5d8e12cb17e22f71b61eb4f
```

##### eosio.token:

```
openssl dgst -sha256 contracts/1.7.1/eosio.token/eosio.token.wasm
SHA256(contracts/1.7.1/eosio.token/eosio.token.wasm)= f6a2939074d69fc194d4b7b5a4d2c24e2766046ddeaa58b63ddfd579a0193623

openssl dgst -sha256 contracts/1.7.1/eosio.token/eosio.token.abi
SHA256(contracts/1.7.1/eosio.token/eosio.token.abi)= 7ad6d6ac8bed6d412b3ce9eb629c4ecc587607a63f1eae5980e5f6c86a479e34
```

##### eosio.msig:

```
openssl dgst -sha256 contracts/1.7.1/eosio.msig/eosio.msig.wasm
SHA256(contracts/1.7.1/eosio.msig/eosio.msig.wasm)= 70fe82b6a8302eba5ce4fe50083abe0d465201d8c0a2f8a3a4c4c092fb0a6570

openssl dgst -sha256 contracts/1.7.1/eosio.msig/eosio.msig.abi
SHA256(contracts/1.7.1/eosio.msig/eosio.msig.abi)= b9192fe8ab8d7851b3f5ff3d2efea8b829b726300fda2cd43170d7ee3d4c62b0
```


## Deploy eosio.system/eosio.token/eosio.msig contracts

### 1. Prepare transaction payload

Take eosio.system for example:

Generate set code&abi transaction:

```
cleos -u https://api-kylin.eoslaomao.com set contract eosio contracts/1.7.1/eosio.system -p eosio -s -j -d > deploy_system.json
```

Update expiration to a future time, set `ref_block_num` and `ref_block_prefix` to 0, you will get a transaction like this:

```
{
  "expiration": "2019-10-19T07:28:47",
  "ref_block_num": 0,
  "ref_block_prefix": 0,
  "max_net_usage_words": 0,
  "max_cpu_usage_ms": 0,
  "delay_sec": 0,
  "context_free_actions": [],
  "actions": [{
      "account": "eosio",
      "name": "setcode",
      "authorization": [{
          "actor": "eosio",
          "permission": "active"
        }
      ],
      "data": "......",
    },{
      "account": "eosio",
      "name": "setabi",
      "authorization": [{
          "actor": "eosio",
          "permission": "active"
        }
      ],
      "data": "......"
    }
  ],
  "transaction_extensions": [],
  "signatures": [],
  "context_free_data": []
}
```

### 2. Prepare Block Producer permission list

We have included top 30 BPs + 16 highly recoginized technical/governace BPs among the community in our proposals, you can find the full list in file `producer_perm.json`.

### 3. Propose on Kylin Testnet

Take `eosio.system` for example:

```
cleos -u https://api-kylin.eoslaomao.com multisig propose_trx producer_perm.json 1seven1 producer_perm.json deploy_system.json eoslaomaocom
```

We have proposed to deplpy `eosio.system` on Kylin Testnet.

The payload used for the these proposals can be found in `deploy_system.json`, `deploy_token.json` and `deploy_msig.json`, please review and verify.

1. Proposal to deploy eosio.system:

[https://bloks.io/msig/eoslaomaocom/1seven1](https://bloks.io/msig/eoslaomaocom/1seven1)

```
cleos -u https://api-kylin.eoslaomao.com multisig review eoslaomaocom 1seven1
```

EOSLaoMao Team.
