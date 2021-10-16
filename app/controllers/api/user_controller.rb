class Api::UserController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: current_user.as_json.slice("id", "uid")
  end
end
