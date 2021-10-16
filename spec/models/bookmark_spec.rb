# == Schema Information
#
# Table name: bookmarks
#
#  id                      :bigint           not null, primary key
#  user_novel_ownership_id :bigint           not null
#  slug                    :string           not null
#  position                :string           not null
#  title_cache             :string           not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
