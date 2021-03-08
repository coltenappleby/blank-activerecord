# Seed Your Database 
require_relative '../app/models/customer.rb'


cust1 = Customer.create({:name =>"Andre", :balance => 1000000000})
cust2 = Customer.create({:name =>"Menachem", :balance => 4000000000})
cust3 = Customer.create({:name =>"Colten", :balance => 6000000000})

merch1 = Merchant.create({:name =>"Wine Shop", :balance => 680000})
merch2 = Merchant.create({:name =>"Bakery", :balance => 680000})
merch3 = Merchant.create({:name =>"Laundry", :balance => 680000})

trans1 = Transaction.create({customer_id: cust1.id, merchant_id: merch1.id})
trans2 = Transaction.create({customer_id: cust1.id, merchant_id: merch2.id}) 
trans3 = Transaction.create({customer_id: cust2.id, merchant_id: merch1.id}) 
trans4 = Transaction.create({customer_id: cust2.id, merchant_id: merch2.id}) 


binding.pry