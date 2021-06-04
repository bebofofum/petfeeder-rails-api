class Pet < ApplicationRecord
    has_many :feedings, dependent: :destroy
    has_many :owners, through: :feedings

    validates :name, presence: true, uniqueness: true
    validates :species, presence: true


end
