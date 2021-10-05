# == Schema Information
#
# Table name: novel_chapters
#
#  id       :bigint           not null, primary key
#  title    :string           not null
#  content  :text             not null
#  novel_id :bigint           not null
#
class NovelChapter < ApplicationRecord
end
