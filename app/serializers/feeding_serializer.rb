class FeedingSerializer
  include JSONAPI::Serializer
  attributes :id, :description, :category, :completed
end
