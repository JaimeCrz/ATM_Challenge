require 'date'
require 'pry'

class Person
    attr_accessor :name, :cash, :account    

  def initialize (attrs = {})
    binding.pry
    set_name(attrs[:name])
    @cash = 0
  end

  def account_to_nil
    @account = :account
  end
end


private

def set_name(obj)
  obj == nil ?  missing_name : @name = obj
end

def missing_name
  raise "A name is required"
end
