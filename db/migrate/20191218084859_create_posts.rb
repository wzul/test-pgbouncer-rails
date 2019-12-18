class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :amount, default: 0, null: false
      t.boolean  "green", default: false
      t.string :name
    end
  end
end
