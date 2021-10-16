# == Schema Information
#
# Table name: user_novel_ownerships
#
#  id                :bigint           not null, primary key
#  user_id           :bigint           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  provider          :integer          not null
#  slug              :string           not null
#  title_cache       :string           not null
#  author_name_cache :string           not null
#
class UserNovelOwnership < ApplicationRecord
end
