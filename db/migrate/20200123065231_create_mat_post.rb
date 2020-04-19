class CreateMatPost < ActiveRecord::Migration[5.2]
  def up
    create = %q{
      CREATE MATERIALIZED VIEW total_post_views
      AS
      SELECT posts.id, posts.amount
      FROM posts
      WITH NO DATA;
    }
    create_index = %q{
      CREATE UNIQUE INDEX index_id ON total_post_views (id);
    }
    execute "#{create}"
    execute "#{create_index}"
  end
  def down
    execute <<~SQL
      DROP INDEX index_id;
      DROP MATERIALIZED VIEW IF EXISTS total_post_views;
    SQL
  end
end
