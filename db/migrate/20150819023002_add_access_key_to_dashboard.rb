class AddAccessKeyToDashboard < ActiveRecord::Migration
  def change
    add_column :dashboards, :access_key, :string
  end
end
