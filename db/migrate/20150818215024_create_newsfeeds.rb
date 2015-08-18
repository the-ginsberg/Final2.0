class CreateNewsfeeds < ActiveRecord::Migration
  def change
    create_table :newsfeeds do |t|
      t.string :title
      t.integer :dash_id
      t.references :dashboard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
