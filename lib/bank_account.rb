require 'pry'
require "/Users/JohnDaise/Desktop/Flatiron/oo-banking-dc-web-062518/lib/bank_account.rb"

class BankAccount

attr_accessor :balance, :status
attr_reader :name


def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def deposit(amount)
  @balance += amount
end

def display_balance
  puts self
  "Your balance is $#{balance}."
end

def valid?
  if @status == "open" && @balance > 0
    true
  else
    false
  end
end


def close_account
  self.status = "closed"
end







end
