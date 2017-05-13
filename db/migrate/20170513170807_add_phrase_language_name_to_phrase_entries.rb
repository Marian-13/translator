class AddPhraseLanguageNameToPhraseEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :phrasebook_entries, :phrase_language_name, :string
  end
end
