FactoryGirl.define do
  factory :farm do
    sequence(:name) { |n| "Wallace Farms #{n}" }
    sequence(:farm_description) { |n| "Super organic farm #{n}." }
    address "15 Hilltop Road"
    city "Sudbury"
    state "MA"
    country "United States"
    sequence(:number_of_shares) { |n| "1 #{n}" }
    share_price "400"
    sequence(:share_description) { |n| "big box of veggies #{n}." }
    certification "organic"
    user
  end

  factory :user do
    sequence(:email) { |n| "johnisthebest@wallace#{n}.com" }
    password "12345678"
    password_confirmation "12345678"
  end

end
