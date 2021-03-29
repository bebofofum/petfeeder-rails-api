class PetSerializer
  include JSONAPI::Serializer
  attributes :id, :name
  has_many :feedings
end
