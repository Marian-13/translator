class CreatePhrasebookEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :phrasebook_entries do |t|

      t.timestamps
    end
  end
end
