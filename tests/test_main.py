import pytest
import pytest_asyncio
from starkware.starknet.testing.contract import StarknetContract
from starkware.starknet.testing.starknet import Starknet


@pytest_asyncio.fixture
async def starknet() -> Starknet:
    return await Starknet.empty()


@pytest_asyncio.fixture
async def contract(starknet: Starknet) -> StarknetContract:
    return await starknet.deploy("src/main.cairo", constructor_calldata=[500])


def describe_get_balance():
    @pytest.mark.asyncio
    async def it_should_balance(contract):
        # When
        execution = await contract.getBalance().call()

        # Then
        assert execution.result.balance == 500

# def describe_increase_balance():
#     @pytest.mark.asyncio
#     async def it_should_increase_balance(contract):
#         # FILL ME
#
#     @pytest.mark.asyncio
#     async def it_should_fail_when_value_is_not_positive(contract):
#         # FILL ME
