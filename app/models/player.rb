class Player < ApplicationRecord
    has_many :drafts
    has_many :users, through: :drafts
end
