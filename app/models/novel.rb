# == Schema Information
#
# Table name: novels
#
#  id         :bigint           not null, primary key
#  slug       :string           not null
#  provider   :integer          not null
#  title      :string           not null
#  crawled_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Novel < ApplicationRecord
end
