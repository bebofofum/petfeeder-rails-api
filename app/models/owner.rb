class Owner < ApplicationRecord
    has_many :feedings
    has_many :pets, through: :feedings

    validates :name, presence: true, uniqueness: true


end
