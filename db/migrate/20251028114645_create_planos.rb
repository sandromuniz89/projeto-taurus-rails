class CreatePlanos < ActiveRecord::Migration[8.1]
  def change
    create_table :planos do |t|
      t.string :nome
      t.decimal :valor

      t.timestamps
    end
  end
end
