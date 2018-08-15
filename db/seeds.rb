puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = []
  5.times do
    restaurants_attributes << {
      name:         Faker::Pokemon.unique.name,
      address:      Faker::Address.street_address,
      category:  ["chinese", "italian", "japanese", "french", "belgian"].sample
  }
  end
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
