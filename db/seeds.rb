# Seed Your Database 
require_relative '../app/models/customer.rb'


cust1 = Customer.create({:name =>"Andre", :balance => 1000000000})
# cust2 = Customer.new("Menachem", 100)
# cust3 = Customer.new("Colten", 10)

merch1 = Merchant.new("NBA Top Shop", 100)
merch2 = Merchant.new("Pokemon", 1000)
merch3 = Merchant.new("M+M", 1001)

puts merch1.id

trans1 = Transaction.create({customer_id: cust1.id, merchant_id: merch1.id})
trans2 = Transaction.create({customer_id: cust1.id, merchant_id: merch2.id}) 
trans3 = Transaction.create({customer_id: cust2.id, merchant_id: merch1.id}) 
trans4 = Transaction.create({customer_id: cust2.id, merchant_id: merch2.id}) 


binding.pry