require 'date'
require 'pry'


class Account
    attr_accessor :account_status
    attr_accessor :owner
    
    STANDARD_VAILIDITY_YRS = 5

    def initialize (attrs = {})
        binding,pry
        @account_status = :active
        set_owner(attrs[:owner])
    end


    def pin_code
        rand(1000..9999)
    end
    
    def exp_date
        Date.today.next_year(Account::STANDARD_VAILIDITY_YRS).strftime('%m/%y')
    end

    def self.deactivate(account)
      account.account_status = :deactivated
    end

end

private


def set_owner(obj)
    obj == nil ?  missing_owner : @owner = obj
end

def missing_owner
    raise "An Account owner is required"
end