class Feeding < ApplicationRecord
  belongs_to :pet
  belongs_to :owner
end
