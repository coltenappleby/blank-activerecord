class Transaction < ActiveRecord::Base
    belongs_to :merchants
    belongs_to :customers
end
