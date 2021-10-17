class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :slug, :position, :updated_at
  attribute :title_cache, key: :title
end
