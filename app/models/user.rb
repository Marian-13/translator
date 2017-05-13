class User < ApplicationRecord
  has_one :phrasebook

  after_create :create_phrasebook
end
