class Pet < ApplicationRecord
    has_many :feedings
    has_many :owners, through: :feedings


end
