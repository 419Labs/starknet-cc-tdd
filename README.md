# Test your Cairo contracts - TDD • workshop

**StarknetCC** - TDD workshop by Alpha Road team

## Introduction

This workshop will show you how to do TDD (Test Driven Development) with your Cairo contracts. You can choose to test your contracts using Pytest (test with python) or using Protostar (test with Cairo).

You can find the presentation [here](./presentation.pdf).

## Prerequisite

To follow this workshop you should at least have basic knowledge in Cairo smart contracts development.

You also need to [set up](https://www.cairo-lang.org/docs/quickstart.html) your environment  

## TODO

1. Test and complete boolean.cairo (if protostar) or boolean_contract.cairo (if pytest)
2. Test and complete main.cairo
3. Test and complete AccessController.cairo

## Testing with Protostar

Documentations: 
- [installation](https://docs.swmansion.com/protostar/docs/tutorials/installation)
- [testing](https://docs.swmansion.com/protostar/docs/tutorials/guides/testing#start_prank)

```shell
# Install dependencies first (openzeppelin)
protostar install

# Then run tests
protostar test 

# Run a specific test file
protostar test tests/test_boolean.cairo
```

## Testing with Pytest

```shell
# Install pytest
pip install -U pytest

# Install test dependencies
pip install -r tests/requirements.txt

# Then run tests
pytest tests

# Run a specific test file
pytest tests/test_boolean_contract.py
```
