FactoryBot.define do
  factory :article do
    title { "MyString" }
    lede { "MyText" }
    body { "MyText" }
    author { "MyString" }
    association :category, factory: :category
  end
end
