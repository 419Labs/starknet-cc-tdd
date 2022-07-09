%lang starknet
from starkware.cairo.common.math import assert_nn
from starkware.cairo.common.cairo_builtins import HashBuiltin

@view
func or_bool(x, y) -> (res : felt):
    if (x - 1) * (y - 1) == 0:
        return (1)
    else:
        return (0)
    end
end

@view
func and_bool(x, y) -> (res : felt):
    # FILL ME
    return (0)
end

@view
func nor(x, y) -> (res : felt):
    # FILL ME
    return (0)
end

@view
func xor(x, y) -> (res : felt):
    # FILL ME
    return (0)
end
