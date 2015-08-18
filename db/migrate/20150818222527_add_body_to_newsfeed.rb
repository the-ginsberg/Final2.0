class AddBodyToNewsfeed < ActiveRecord::Migration
  def change
    add_column :newsfeeds, :body, :text
  end
end
