class Api::User::BookmarkController < ApplicationController
  before_action :authenticate_user!

  def create
    novel = UserNovelOwnership.find(params[:novel_id])
    novel.build_bookmark if novel.bookmark.blank?
    novel.bookmark.tap do |b|
      b.title_cache = params[:title]
      b.position = params[:position]
      b.slug = params[:slug]
    end
    novel.bookmark.save!

    render json: novel.bookmark, status: 201, serializer: BookmarkSerializer
  end
end
