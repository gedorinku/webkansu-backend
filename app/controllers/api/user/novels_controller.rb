class Api::User::NovelsController < ApplicationController
  before_action :authenticate_user!

  def index
    resp = UserNovelOwnership.where(user_id: current_user.id).preload(:bookmark)
    render json: resp, each_serializer: UserNovelOwnershipSerializer
  end
end
