# == Schema Information
#
# Table name: user_novel_ownerships
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  novel_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserNovelOwnership < ApplicationRecord
end
