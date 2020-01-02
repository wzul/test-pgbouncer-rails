class CreateOwnersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.integer :cup_id
      t.string :name
    end
  end
end
