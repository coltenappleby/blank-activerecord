class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :customers
    create_table :merchants
    create_table :transactions

    add_column :customers, :name, :string
    add_column :customers, :balance, :float

    add_column :merchants, :name, :string
    add_column :merchants, :balance, :float

    add_column :transactions, :customer_id, :integer
    add_column :transactions, :merchant_id, :integer
    add_column :transactions, :created_at, :timestamp
  end
end
