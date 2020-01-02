class CreateCupsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cups do |t|
      t.integer :owner_id
      t.string :name
    end
  end
end
