class Api::UserController < ApplicationController
  before_action :authenticate_user!

  def show
    p request.headers
    p user_signed_in?
    render json: current_user.as_json.slice("id", "uid")
  end
end
