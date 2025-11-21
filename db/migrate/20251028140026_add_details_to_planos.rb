class AddDetailsToPlanos < ActiveRecord::Migration[8.1]
  def change
    add_column :planos, :description, :text
    add_column :planos, :duration_days, :integer
  end
end
