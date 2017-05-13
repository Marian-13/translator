class Phrasebook < ApplicationRecord
  belongs_to :user
  has_many :phrasebook_entries
end
