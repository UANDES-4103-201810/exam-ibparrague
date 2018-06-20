class AddReferencesToPizza < ActiveRecord::Migration[5.1]
  def change
    add_reference :pizzas, :crust, foreign_key: true
  end
end
