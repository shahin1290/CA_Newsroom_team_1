FactoryBot.define do
  factory :article do
    title { "MyString" }
    lede { "MyText" }
    body { "MyText" }
    author { "MyString" }
    date { "2019-01-11" }
  end
end
