class BookmarkSerializer < ActiveModel::Serializer
  attributes :slug, :position, :updated_at
  attribute :title_cache, key: :title
end
