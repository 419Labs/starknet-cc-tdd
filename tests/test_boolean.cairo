%lang starknet
from src.boolean import or
from starkware.cairo.common.cairo_builtins import HashBuiltin

### OR

@external
func test_or_should_return_true_when_first_is_true_and_second_is_false():
    # When
    let (res) = or(1, 0)

    # Then
    assert res = 1
    return ()
end

@external
func test_or_should_return_true_when_first_is_false_and_second_is_true():
    # When
    let (res) = or(0, 1)

    # Then
    assert res = 1
    return ()
end

@external
func test_or_should_return_true_when_all_params_are_true():
    # When
    let (res) = or(1, 1)

    # Then
    assert res = 1
    return ()
end

@external
func test_or_should_return_false_when_all_params_are_false():
    # When
    let (res) = or(0, 0)

    # Then
    assert res = 0
    return ()
end


### AND

# FILL ME