import pytest
import pytest_asyncio
from starkware.starknet.testing.contract import StarknetContract
from starkware.starknet.testing.starknet import Starknet


@pytest_asyncio.fixture
async def starknet() -> Starknet:
    return await Starknet.empty()


@pytest_asyncio.fixture
async def contract(starknet: Starknet) -> StarknetContract:
    return await starknet.deploy("src/boolean_contract.cairo")


def describe_or_bool():
    @pytest.mark.asyncio
    async def it_should_return_true_when_first_is_true_and_second_is_false(contract):
        # When
        execution = await contract.or_bool(1, 0).call()

        # Then
        assert execution.result.res == 1

    @pytest.mark.asyncio
    async def it_should_return_true_when_first_is_false_and_second_is_true(contract):
        # When
        execution = await contract.or_bool(0, 1).call()

        # Then
        assert execution.result.res == 1

    @pytest.mark.asyncio
    async def it_should_return_true_when_first_is_true_and_second_is_true(contract):
        # When
        execution = await contract.or_bool(0, 1).call()

        # Then
        assert execution.result.res == 1

    @pytest.mark.asyncio
    async def it_should_return_false_when_first_and_second_are_false(contract):
        # When
        execution = await contract.or_bool(0, 0).call()

        # Then
        assert execution.result.res == 0

# FILL ME
# def describe_and_bool():
# def describe_nor():
# def describe_xor():
