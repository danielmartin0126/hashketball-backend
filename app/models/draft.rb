class Draft < ApplicationRecord
    belongs_to :player
    belongs_to :user
end
