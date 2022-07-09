%lang starknet

@contract_interface
namespace IToken:
    func getBalance() -> (balance: felt):
    end

    func increaseBalance(amount: felt) -> ():
    end
end
