class Customer < ActiveRecord::Base
    has_many :transactions
    has_many :merchants, through: :transactions

    def merchants
        my_transactions.map do
            |t|
            Merchant.find_by(merchant_id: t.merchant_id).name
        end
    end

    def my_transactions
        Transaction.all.where(customer_id: self.id)
    end

    
end
