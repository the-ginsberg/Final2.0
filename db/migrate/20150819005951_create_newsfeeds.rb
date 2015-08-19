class CreateNewsfeeds < ActiveRecord::Migration
  def change
    create_table :newsfeeds do |t|
      t.string :title
      t.text :body
      t.references :dashboard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
