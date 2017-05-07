class AddGoogleNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :google_name, :string
  end
end
