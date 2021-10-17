require 'rails_helper'

RSpec.describe "Api::User::Novels", type: :request do
  describe "GET /show" do
    let!(:current_user) { create(:user) }
    sign_in(:current_user)

    let!(:user_novel_ownership) { create(:user_novel_ownership, user: current_user) }

    it "returns" do
      get "/api/user/novels"
      assert_response_schema_confirm(200)
    end
  end
end
