FactoryBot.define do
  factory :article do
    name { "MyText" }
    price_local { 1.5 }
    price_export { 1.5 }
    category { nil }
  end
end
