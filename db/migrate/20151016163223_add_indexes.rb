class AddIndexes < ActiveRecord::Migration
  def change
    add_index :articles, :published
  end
end
