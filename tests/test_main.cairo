%lang starknet

from src.interfaces.IToken import IToken
from starkware.cairo.common.cairo_builtins import HashBuiltin

@view
func __setup__():
    %{ context.contract_address = deploy_contract("./src/main.cairo", [500]).contract_address %}
    return ()
end

@external
func test_get_balance_should_return_balance{syscall_ptr : felt*, range_check_ptr, pedersen_ptr : HashBuiltin*}():
    # Given
    tempvar contract_address
    %{ ids.contract_address = context.contract_address %}

    # When
    let (balance) = IToken.getBalance(contract_address)

    # Then
    assert balance = 500
    return ()
end

@external
func test_increase_balance_should_increase_balance{syscall_ptr : felt*, range_check_ptr, pedersen_ptr : HashBuiltin*}():
    # FILL ME
    return ()
end

@external
func test_increase_balance_should_fail_when_value_is_not_positive{
    syscall_ptr : felt*, range_check_ptr, pedersen_ptr : HashBuiltin*
}():
    # FILL ME
    return ()
end
