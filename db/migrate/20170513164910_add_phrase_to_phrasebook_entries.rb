class AddPhraseToPhrasebookEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :phrasebook_entries, :phrase, :text
  end
end
