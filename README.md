# NFT Dynamic Project

**This project is a dynamic NFT system that leverages Ethereum's capabilities and integrates with IPFS for decentralized storage.** The NFTs are designed to evolve based on specific conditions or external triggers, offering a unique and interactive experience for users.

## Features

- **Dynamic NFTs**: These NFTs change their metadata or visual representation based on predefined conditions.
- **IPFS Integration**: Ensures that all NFT metadata and assets are stored in a decentralized and immutable manner.
- **Secure and Transparent**: Built on Ethereum, ensuring reliability and trust through blockchain technology.
- **Efficient Development**: Built using Foundry, a powerful Ethereum development toolkit.

---

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat, and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions, and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose Solidity REPL.

## Documentation

For more details, visit the [Foundry Book](https://book.getfoundry.sh/).

---

## Usage

### Build

Compile the Solidity contracts:

```shell
$ forge build
```

### Test

Run the tests to ensure contract functionality:

```shell
$ forge test
```

### Format

Format Solidity files for consistency:

```shell
$ forge fmt
```

### Gas Snapshots

Generate gas usage snapshots:

```shell
$ forge snapshot
```

### Anvil

Start a local Ethereum node:

```shell
$ anvil
```

### Deploy

Deploy the smart contract to an Ethereum network:

```shell
$ forge script DeployMoodNft --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

Interact with deployed contracts using Cast:

```shell
$ cast <subcommand>
```

### Help

Access help menus for detailed usage:

```shell
$ forge --help
$ anvil --help
$ cast --help
```

---

## IPFS Integration

This project uses IPFS to store NFT metadata and assets, ensuring:

- **Decentralization**: Metadata and assets are stored off-chain for scalability and redundancy.
- **Immutability**: Once uploaded, metadata and assets cannot be altered, ensuring NFT integrity.

To upload metadata and assets to IPFS, you can use tools like `ipfs-cli` or services such as Pinata or Infura.

---

## Getting Started

1. Clone this repository:

    ```shell
    $ git clone https://github.com/AlesxanDer1102/nft-project
    ```

2. Install Foundry:

    Follow the [Foundry installation guide](https://book.getfoundry.sh/getting-started/installation.html).

3. Install dependencies:

    ```shell
    $ make install
    ```

4. Configure `.env` file with your private key and RPC URL.

5. Build 
    ```shell
    $ make build
    ```
6. Test 
    ```shell
    $ make test
    ```
7. Deploy in anvil and mint 
    ```shell
    make anvil 
    make mint
    ```
7. To deploy in one blockchain you need to add the RPC_URL_BLOCKCHAIN and your PRIVATE_KEY to .env 
and make
 ```shell
 forge script DeployMoodNft --rpc-url $(RPC_URL_BLOCKCHAIN) --private-key $(PRIVATE_KEY) --broadcast
 forge script MintMoodNft --rpc-url $(RPC_URL_BLOCKCHAIN) --private-key $(PRIVATE_KEY) --broadcast
 
 ```

---

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or features you'd like to see.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.