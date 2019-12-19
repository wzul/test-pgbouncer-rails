class CreatePostCounter < ActiveRecord::Migration[5.2]
  def change
    create_table :post_counters do |t|
      t.string :tags
      t.integer :limit, default: 0, null: false
      t.integer :counter, default: 0, null: false
    end

    add_index :post_counters, [:tags], name: 'index_post_counter_on_tags'
  end
end
