## Setup

All the tools needed to follow along are listed here. Please install them in advance. 

In case future updates break something, the versions used in the creation of this guide will be listed in `[XX.YY.ZZ]`, but having the precise version shouldn't be crucial.

### Prerequisites tools

We assume that you have the following installed on your machine. 

1. `node` [`v10.16.0`] and `npm` [`6.9.0`] (this is installed with NodeJS).
2. `python` [`3.6.x`]  


### Remix

Remix is a fully featured, yet easy to use in browser IDE.

You can access Remix in your browser at https://remix.ethereum.org/. 


#### RemixD (optional)

[`remixd`](https://github.com/ethereum/remixd#readme) enables you to interact with files in your system from within remix. 

* install: `npm install -g remixd`
* use: `remixd -s <absolute-path> --remix-ide https://remix.ethereum.org`


### Truffle 

[Truffle](https://www.trufflesuite.com/docs/truffle/getting-started/installation) is a command line tool, and the most popular development framework for Ethereum smart contracts.

`npm i -g truffle`

### Truffle Security

An additional security analysis plugin for Truffle, from MythX.

`npm i -g truffle-security`

### Ganache

[Ganache](https://www.trufflesuite.com/docs/ganache/overview) is an Ethereum client you can run locally to deploy contracts, develop applications, and run tests.

- **GUI:** You can download and install the graphical interface [here](https://www.trufflesuite.com/docs/ganache/quickstart).
- **CLI:** If you prefer you can also run [command line version of Ganache](https://github.com/trufflesuite/ganache-cli/blob/master/README.md): `npm install -g ganache-cli`. 

### solc (The solidity compiler)

This is the C++ command line `solc` tool. Not `solcjs` which provides JavaScript bindings for the solidity compiler. 

Follow the instructions for installing `solc` on your system here: https://solidity.readthedocs.io/en/v0.5.13/ 


### MythX CLI

A command line interface for running security analysis on the MythX platform: 

`npm i -g sabre-mythx`

### Slither

A static analysis tool for Solidity.

`pip install slither-analyzer -U`

