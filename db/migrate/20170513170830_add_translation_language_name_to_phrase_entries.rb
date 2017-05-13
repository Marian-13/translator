class AddTranslationLanguageNameToPhraseEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :phrasebook_entries, :translation_language_name, :string
  end
end
