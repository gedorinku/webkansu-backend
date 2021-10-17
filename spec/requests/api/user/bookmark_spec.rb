require 'rails_helper'

RSpec.describe "Api::User::Bookmarks", type: :request do
  describe "POST /" do
    let!(:current_user) { create(:user) }
    sign_in(:current_user)

    let!(:user_novel_ownership) { create(:user_novel_ownership, user: current_user) }

    it "returns" do
      post "/api/user/novels/#{user_novel_ownership.id}/bookmark",
        params: { title: "Title", position: "id_1", slug: "1" }.to_json,
        headers: { "Content-Type" => "application/json" }
      assert_response_schema_confirm(201)

      expect(user_novel_ownership.bookmark.title_cache).to eq("Title")
      expect(user_novel_ownership.bookmark.position).to eq("id_1")
      expect(user_novel_ownership.bookmark.slug).to eq("1")
    end
  end
end
