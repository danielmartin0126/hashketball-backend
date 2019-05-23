class User < ApplicationRecord
    has_many :drafts
    has_many :players, through: :drafts
end
