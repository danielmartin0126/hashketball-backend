class Draft < ApplicationRecord
    belongs_to :players
    belongs_to :user
end
