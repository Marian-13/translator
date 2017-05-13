class AddUserReferenceToPhrasebooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :phrasebooks, :user
  end
end
