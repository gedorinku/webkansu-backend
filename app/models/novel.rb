# == Schema Information
#
# Table name: novels
#
#  id       :bigint           not null, primary key
#  slug     :string           not null
#  provider :integer          not null
#  title    :string           not null
#
class Novel < ApplicationRecord
end
