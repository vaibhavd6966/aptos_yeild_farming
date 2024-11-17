# Yield Farming Protocol

## Introduction

The **Yield Farming Protocol** is a decentralized financial (DeFi) protocol built on the **Aptos blockchain**. This smart contract allows users to deposit **Aptos Coin (APT)** tokens into the platform and earn rewards over time based on their deposits. The protocol is designed to incentivize long-term participation and staking by distributing rewards automatically.

This protocol leverages Aptos’ high-performance blockchain to securely track deposits, manage rewards, and facilitate token transfers in a decentralized way. It ensures a seamless experience for users while maintaining a robust and scalable infrastructure for yield farming.

The contract has a basic framework that includes:
- Tracking user deposits and their corresponding rewards.
- Configuring rewards per second based on the protocol’s current parameters.
- Allowing users to deposit their tokens and increase their share of the reward pool.

## Vision

The vision of the **Yield Farming Protocol** is to provide users with a secure, transparent, and efficient method for earning passive income through decentralized finance. The protocol aims to:
- **Empower users** by allowing them to participate in yield farming and benefit from reward distributions in a fully decentralized environment.
- **Maximize the efficiency of the Aptos ecosystem** by leveraging its scalability and low-latency capabilities to ensure smooth and high-performance token staking.
- **Drive growth** in the Aptos ecosystem by encouraging users to lock in their tokens and participate in a long-term, value-generating activity.

By creating this yield farming protocol, we aim to contribute to the growth of decentralized finance (DeFi) on Aptos, providing users with tools to optimize their financial strategies and participate in the growing decentralized economy.

## Future Goals

While the initial version of the **Yield Farming Protocol** is functional and provides basic yield farming capabilities, we have several goals for future development:

1. **Support for Multiple Token Types**: The protocol currently supports only Aptos Coin (APT). We plan to expand it to support a variety of tokens, allowing users to farm a broader range of assets.
   
2. **Compound Rewards**: We intend to introduce a compounding mechanism where users can automatically reinvest their rewards back into their farming positions to generate additional returns.

3. **Advanced Reward Mechanisms**: We will introduce more sophisticated reward models to optimize yield distribution based on factors like user activity, time of participation, or total deposits.

4. **Governance Integration**: The future version will allow token holders to participate in protocol governance. This could include decisions about reward rates, protocol fees, or which tokens to support.

5. **Security Audits**: Conduct third-party audits and stress tests to ensure the protocol’s security and resilience against attacks.

6. **User Interface and Frontend**: We plan to build a user-friendly web interface, enabling users to interact with the protocol without needing to manually interact with the blockchain through the CLI.

7. **Integration with Other DeFi Protocols**: We aim to expand the protocol's capabilities by integrating it with other DeFi platforms and protocols for additional features such as liquidity pools, lending, or asset swapping.

## Deployed Address

The **Yield Farming Protocol** has been deployed on the **Aptos blockchain** at the following address:

```
0xb87fee700e5323a8cf1c30e0095fdc6c6163483ef382eca5860a2af41e7cdcc9
```

This is the address where the contract’s global state is stored, including user deposits and protocol configurations. Interactions with this address allow users to deposit tokens, track their rewards, and interact with the protocol’s functions.

## Key Features

- **UserPosition Struct**: Tracks individual user deposits, pending rewards, and reward calculations. Each user’s position is stored in the blockchain, ensuring transparency and security.
- **ProtocolConfig Struct**: Stores the configuration of the protocol, such as the total deposits, reward distribution rate, and last reward update timestamp.
- **Rewards per Second**: The protocol rewards users based on the amount of time they have staked tokens, with rewards distributed continuously at the rate defined by the protocol.
- **Deposit Mechanism**: Allows users to deposit their tokens into the protocol, with automatic updates to their position and the protocol’s global state.

## How It Works

### Initialization
The protocol is initialized by an administrator (usually the contract deployer) who sets the reward rate per second. This is a crucial parameter for determining how much reward will be distributed to users over time.

### Deposit Tokens
Users can deposit tokens into the protocol, which are then added to the global deposit pool. Each user’s position is updated accordingly, and the system tracks the amount deposited, the time of deposit, and the pending rewards. 

### Reward Calculation
Rewards are allocated over time based on the amount deposited and the reward rate. Each user earns rewards proportional to their share of the total deposit pool, with rewards being distributed automatically.

### Error Handling
The contract uses the following error codes to handle specific failure cases:
- **ERR_NOT_INITIALIZED**: This error occurs if the protocol is not initialized with a reward rate.
- **ERR_INSUFFICIENT_BALANCE**: This error occurs when a user tries to deposit more tokens than they have in their account.

## How to Get Started

### 1. Install Prerequisites

To interact with the **Yield Farming Protocol**, you will need the following tools installed on your system:

- **Rust**: Required to compile Move code.
- **Aptos CLI**: For deploying and interacting with Aptos smart contracts.

### 2. Clone the Repository

Start by cloning the repository containing the protocol code:

```bash
git clone https://github.com/vaibhavd6966/aptos_yeild_farming.git
cd aptos_yeild_farming
```

### 3. Build the Move Code

To compile the Move code, run the following command:

```bash
move build
```

### 4. Deploy the Contract

Once the code is successfully compiled, you can deploy the contract to the Aptos blockchain. Use the following command to deploy:

```bash
aptos move publish --address <your-address> --private-key <your-private-key> --network <network>
```

Replace `<your-address>`, `<your-private-key>`, and `<network>` with your Aptos address, private key, and the network you are deploying to (e.g., devnet, testnet, or mainnet).

### 5. Interact with the Protocol

Once the contract is deployed, you can interact with it using the Aptos CLI. For example, to deposit tokens:

```bash
aptos move call --function deposit_tokens --address <user-address> --args <amount>
```

Replace `<user-address>` with your Aptos address and `<amount>` with the number of tokens you wish to deposit.

## Conclusion

The **Yield Farming Protocol** offers a robust foundation for decentralized finance on the Aptos blockchain. By leveraging Aptos' scalability and low transaction fees, this protocol allows users to stake their tokens securely and earn rewards over time. With plans for future enhancements, this project aims to become a key player in the Aptos DeFi ecosystem.

Feel free to contribute to the development of the project or reach out for any questions or issues related to the protocol.