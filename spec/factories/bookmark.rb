FactoryBot.define do
  factory :bookmark do
    sequence(:slug) { |idx| "chapter_#{idx}" }
    sequence(:title_cache) { |idx| "Chapter #{idx}" }
    position { "123" }
  end
end
