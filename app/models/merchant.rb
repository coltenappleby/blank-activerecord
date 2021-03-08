class Merchant < ActiveRecord::Base
    has_many :transactions
    has_many :customers, through: :transactions
    
    def my_transactions
        Transaction.all.where(merchant_id: self.id)
    end

end