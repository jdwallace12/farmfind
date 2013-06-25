FactoryGirl.define do
  factory :farm do
    sequence(:name) { |n| "Wallace Farms #{n}" }
    sequence(:farm_description) { |n| "Super organic farm #{n}." }
    sequence(:address) { |n| "12 #{n} Summer Street" }
    sequence(:city) { |n| "Boston #{n}" }
    sequence(:state) { |n| "Vermont #{n}" }
    sequence(:country) { |n| "usa#{n}"}
    sequence(:number_of_shares) { |n| "1 #{n}" }
    sequence(:share_price) { |n| "10 #{n}" }
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
