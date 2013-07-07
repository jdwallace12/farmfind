namespace :db do
  desc "fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
   
      Farm.populate 1 do |farm|

        farm.name = Populator.words(1..3).titleize
        farm.farm_description = Populator.sentences(2..10)
        farm.certification = ["organic", "conventional", "none"]
        farm.phone_number  = Faker::PhoneNumber.phone_number
        farm.address = Faker::Address.street_address
        farm.city = Faker::Address.city
        farm.state = Faker::Address.us_state_abbr
        farm.number_of_shares = [30, 50, 80, 100, 150, 200, 250, 300]
        farm.share_price = [300, 350, 400, 500, 550, 600, 650, 700, 750, 800, 850, 900, 1000, 1200]
        farm.share_description = Populator.sentences(2..10)
      end
   end
 end

