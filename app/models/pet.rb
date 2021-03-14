class Pet < ApplicationRecord
    has_many :feedings
    has_many :owners, through: :feedings

    belongs_to :user

end
