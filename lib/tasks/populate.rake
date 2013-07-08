namespace :db do
  desc "fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    user = User.last


    
    def fruits
      %w{banana orange strawberry melon lettuce carrot onion garlic chive}
    end

    def adjectives
      %w{happy fun party shady sunny foggy misty sleepy mossy sticky round square}
    end
    
    def certification
      %w{organic none conventional}.sample
    end    

    def random_farm
      adjectives.sample.titleize + " " + fruits.sample.titleize + " Farm" 
    end

      200.times do
        farm = Farm.new
      
        farm.user = user

        farm.name = random_farm
        farm.farm_description = Faker::Lorem.sentences(2..10)
        farm.certification = certification
        farm.phone_number  = Faker::PhoneNumber.phone_number
        farm.address = Faker::Address.street_address
        farm.city = Faker::Address.city
        farm.state = Faker::Address.state
        farm.country = "United States"
        farm.number_of_shares = rand(300)
        farm.share_price = rand(2000)
        farm.share_description = Faker::Lorem.sentences(2..10)
        farm.save
      end
  end
end

