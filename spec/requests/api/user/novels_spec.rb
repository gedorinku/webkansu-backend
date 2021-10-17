require 'rails_helper'

RSpec.describe "Api::User::Novels", type: :request do
  describe "POST /" do
    let!(:current_user) { create(:user) }
    sign_in(:current_user)

    it "returns" do
      post "/api/user/novels",
        params: { title: "Title", author_name: "hoge", provider: "narou", slug: "12345" }.to_json,
        headers: { "Content-Type" => "application/json" }
      expect(response.status).to eq(201)

      created = current_user.user_novel_ownerships.first
      expect(JSON.parse!(response.body).symbolize_keys).to eq({
        id: created.id,
        title: "Title",
        author_name: "hoge",
        provider: "narou",
        slug: "12345",
        bookmark: nil,
      })

      # nullable: true を committee が正しく扱えない?ので、ここで　assert_response_schema_confirm は使えない。　
      # assert_response_schema_confirm(201)
    end
  end

  describe "GET /show" do
    let!(:current_user) { create(:user) }
    sign_in(:current_user)

    let!(:user_novel_ownership) { create(:user_novel_ownership, user: current_user) }

    it "returns" do
      get "/api/user/novels"
      assert_response_schema_confirm(200)
    end
  end

  describe "GET /find" do
    let!(:current_user) { create(:user) }
    sign_in(:current_user)

    let!(:user_novel_ownership) { create(:user_novel_ownership, user: current_user) }

    it "returns" do
      get "/api/user/novels/find", params: { provider: "narou", slug: user_novel_ownership.slug }
      assert_response_schema_confirm(200)
    end
  end
end
