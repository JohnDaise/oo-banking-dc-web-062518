require 'pry'
require "/Users/JohnDaise/Desktop/Flatiron/oo-banking-dc-web-062518/lib/bank_account.rb"

class Transfer
  # your code here
attr_accessor :sender, :receiver, :amount, :status, :execute_transaction
attr_reader



def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = 'pending'
end


def valid?
   sender.valid? && receiver.valid?
end

def execute_transaction
    @execute_transaction ||= begin
    if sender.balance >= self.amount
      sender.balance -= self.amount
      receiver.balance += self.amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end

def reverse_transfer
   #binding.pry
   if @execute_transaction == "complete"
    sender.balance += self.amount
    receiver.balance -= self.amount
    @status = "reversed"
   end

end




end
