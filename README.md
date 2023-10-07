# Foundry Language Template

A Foundry template to compile and test smart contracts in various EVM languages, including Solidity, Yul, Vyper, Huff and pure Bytecode.

# Installation / Setup

In order to compile Vyper and Huff contracts, make sure you have the respective compilers installed:

- [Vyper](https://vyper.readthedocs.io/en/stable/installing-vyper.html)
- [Huff](https://huff.sh/)

Then clone this repo and install the dependencies:

```
git clone https://github.com/beskay/forge-lang-template.git
cd forge-lang-template
forge install
```

Now you are all set up and ready to go!

# Testing

The usage is demonstrated by the standard `Counter` contract, which is implemented in all supported languages.

`Counter.sol`:

```
forge test --mc CounterTestSol --ffi
```

`Counter.yul`:

```
forge test --mc CounterTestYul --ffi
```

`Counter.vy`:

```
forge test --mc CounterTestVy --ffi
```

`Counter.huff`:

```
forge test --mc CounterTestHuff --ffi
```

To test the pure bytecode implementation, you have to set the `BYTECODE` environment variable first, e.g.:

```
export BYTECODE=0x604680600c6000396000f3fe6000803560e01c80633fb5c1cb14603d578063d09de08a1460325763f2c9ecd81460265780fd5b60209054604051908152f35b506001815401815580f35b50600435815580f3

forge test --mc CounterTestBase
```

# Acknowledgements

- [Foundry-Vyper](https://github.com/0xKitsune/Foundry-Vyper/tree/main)
- [Foundry-Yul+](https://github.com/ControlCplusControlV/Foundry-Yulp)
- [Foundry-Huff](https://github.com/0xKitsune/Foundry-Huff)
- [huff-project-template](https://github.com/huff-language/huff-project-template)
