p "Vamonos!!!!!"

10.times do
  restaurant = Restaurant.new(name:Faker::MostInterestingManInTheWorld.quote ,address:Faker::Address.street_address, phone_number:Faker::PhoneNumber.cell_phone, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  5.times do
    restaurant.reviews << Review.new(content: Faker::Hacker.say_something_smart, rating: [0,1,2,3,4,5].sample)
  end
  restaurant.save!
end

p "Done!"

