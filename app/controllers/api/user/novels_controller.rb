class Api::User::NovelsController < ApplicationController
  before_action :authenticate_user!

  def create
    resp = UserNovelOwnership.create!(
      user: current_user,
      title_cache: params[:title],
      author_name_cache: params[:author_name],
      provider: params[:provider].to_sym,
      slug: params[:slug],
    )

    render json: resp, status: 201, serializer: UserNovelOwnershipSerializer
  end

  def index
    resp = UserNovelOwnership.where(user_id: current_user.id).preload(:bookmark)
    render json: resp, each_serializer: UserNovelOwnershipSerializer
  end

  def find
    resp = UserNovelOwnership.find_by!(provider: params[:provider].to_sym, slug: params[:slug])
    render json: resp, serializer: UserNovelOwnershipSerializer
  end
end
