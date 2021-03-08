class Merchant < ActiveRecord::Base
    has_many :transactions
    has_many :customers, through: :transactions
end