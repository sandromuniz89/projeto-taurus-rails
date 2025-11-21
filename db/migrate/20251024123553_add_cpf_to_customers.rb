class AddCpfToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :cpf, :string
  end
end
