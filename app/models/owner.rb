class Owner < ApplicationRecord
    has_many :feedings, dependent: :destroy
    has_many :pets, through: :feedings

    validates :name, presence: true, uniqueness: true


end
