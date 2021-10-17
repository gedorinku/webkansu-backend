class UserNovelOwnershipSerializer < ActiveModel::Serializer
  attributes :id, :provider, :slug
  attribute :title_cache, key: :title
  attribute :author_name_cache, key: :author_name

  has_one :bookmark, serializer: BookmarkSerializer
end
