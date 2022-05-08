# Vue Foundry Scaffold - WIP

This is a scaffold-eth inspired template to get started with a fullstack ethereum app project, just using different tools. Bootstrapped with create-vue, vue-dapp, and foundry.

## Recommended IDE Setup

[VSCode](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=johnsoncodehk.volar) (and disable Vetur) + [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=johnsoncodehk.vscode-typescript-vue-plugin).

## Prerequisite Installs

Nodejs
Rust
Foundry

## Project Setup

```sh
npm install
```

## Run Tests

```sh
cd src/contracts
forge test
```

## Run Local Node

```sh
anvil
```

## Deploy to Chain

```sh
forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/MyToken.sol:MyToken
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Type-Check, Compile and Minify for Production

```sh
npm run build
```

### Lint with [ESLint](https://eslint.org/)

```sh
npm run lint
```