class AddPhrasebookReferenceToPhrasebookEntries < ActiveRecord::Migration[5.1]
  def change
    add_reference :phrasebook_entries, :phrasebook
  end
end
