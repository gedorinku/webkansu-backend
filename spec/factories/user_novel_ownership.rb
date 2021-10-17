FactoryBot.define do
  factory :user_novel_ownership do
    provider { :narou }
    sequence(:slug) { |idx| "slug_#{idx}" }
    sequence(:title_cache) { |idx| "Title #{idx}" }
    sequence(:author_name_cache) { |idx| "Author #{idx}" }

    after(:create) do |user_novel_ownership|
      create(:bookmark, user_novel_ownership: user_novel_ownership)
    end
  end
end
