class AddAtributesToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :email, :string
    add_column :customers, :password, :string
  end
end
