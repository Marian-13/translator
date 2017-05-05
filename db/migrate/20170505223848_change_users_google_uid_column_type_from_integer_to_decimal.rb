class ChangeUsersGoogleUidColumnTypeFromIntegerToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :google_uid, :decimal
  end
end
