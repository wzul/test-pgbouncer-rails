class CreateTupperware < ActiveRecord::Migration[5.2]
  def change
    create_table :tupperwares do |t|
      t.integer :sku_number
      t.string :name
    end

    add_index :tupperwares, :sku_number, unique: true
  end
end
