class AddTranslationToPhrasebookEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :phrasebook_entries, :translation, :text
  end
end
