class Transaction < ActiveRecord::Base
    has_many :merchants
    has_many :customers
end
