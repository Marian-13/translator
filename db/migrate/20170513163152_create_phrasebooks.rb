class CreatePhrasebooks < ActiveRecord::Migration[5.1]
  def change
    create_table :phrasebooks do |t|

      t.timestamps
    end
  end
end
