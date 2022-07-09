%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.starknet.common.syscalls import get_caller_address
from openzeppelin.token.erc20.interfaces.IERC20 import IERC20
from openzeppelin.access.ownable import Ownable

@storage_var
func slotCount() -> (count: felt):
end

@storage_var
func usedSlotCount() -> (count: felt):
end

@storage_var
func whitelist(address: felt) -> (addresses: felt):
end

@storage_var
func tokenAddress() -> (token_address: felt):
end

@constructor
func constructor{
        syscall_ptr: felt*,
        pedersen_ptr: HashBuiltin*,
        range_check_ptr
    }(
        initial_allowed_access: felt,
        token_address: felt, # (optional, add this at the end of the workshop)
        owner_address: felt
    ):
        # Set token address => (optional, add this at the end of the workshop)
        # Set owner using caller_address
        # Set initial allowed accesses
    return ()
end

@view
func isAllowed{
        syscall_ptr : felt*,
        pedersen_ptr : HashBuiltin*,
        range_check_ptr
    }(address: felt) -> (is_allowed: felt):
    # Check if given address has been registered
    return (is_allowed)
end

@view
func freeSlotsCount{
        syscall_ptr : felt*,
        pedersen_ptr : HashBuiltin*,
        range_check_ptr
    }() -> (free_slots_count: felt):
    # Return number of free slots
    return (0)
end

@view
func getOwner{
        syscall_ptr : felt*,
        pedersen_ptr : HashBuiltin*,
        range_check_ptr
    }() -> (owner: felt):
    # Return owner
    return (0)
end

#
# Externals
#

@external
func increaseMaxSlots{
        syscall_ptr : felt*,
        pedersen_ptr : HashBuiltin*,
        range_check_ptr
    }(increase_max_slots_by: felt):
    # Increase total number of slot
    # Check if caller address is the owner (if not, throw error)
    return ()
end

@external
func register{
        syscall_ptr : felt*,
        pedersen_ptr : HashBuiltin*,
        range_check_ptr
    }():
    # register caller address (anyone can register a new slot)
    # tx will fail if user's token balance is 0 (optional, do this at the end of the workshop)
    # Tx will fail if no more slots available
    return ()
end

@external
func forceRegister{
        syscall_ptr: felt*,
        pedersen_ptr: HashBuiltin*,
        range_check_ptr
    }(address: felt):
    # Check if caller address is the owner (if not, throw error)
    # Force the register, total count will be increased
    return ()
end

@external
func forceRegisterBatch{
        syscall_ptr: felt*,
        pedersen_ptr: HashBuiltin*,
        range_check_ptr
    }(batch_address_len : felt, batch_address : felt*):
    # Check if caller address is the owner (if not, throw error)
    # Force the batch register, total count will be increase
    return ()
end

@external
func transferOwnership{
        syscall_ptr : felt*,
        pedersen_ptr : HashBuiltin*,
        range_check_ptr
    }(new_owner: felt) -> (new_owner: felt):
    # Check if caller address is the owner (if not, throw error)
    # Change owner address
    return (new_owner=new_owner)
end