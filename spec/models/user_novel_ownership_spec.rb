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
require 'rails_helper'

RSpec.describe UserNovelOwnership, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
