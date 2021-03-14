class Owner < ApplicationRecord
    has_many :feedings, dependent: :destroy
    has_many :pets, through: :feedings

    belongs_to :user

end
