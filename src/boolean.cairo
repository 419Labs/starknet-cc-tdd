%lang starknet
from starkware.cairo.common.math import assert_nn
from starkware.cairo.common.cairo_builtins import HashBuiltin

func or(x, y) -> (res : felt):
    if (x - 1) * (y - 1) == 0:
        return (1)
    end
    return (0)
end

func and(x, y) -> (res : felt):
    # FILL ME
    return (0)
end

func nor(x, y) -> (res : felt):
    # FILL ME
    return (0)
end

func xor(x, y) -> (res : felt):
    # FILL ME
    return (0)
end
