class AddPlanoToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_reference :customers, :plano, null: false, foreign_key: true
  end
end
