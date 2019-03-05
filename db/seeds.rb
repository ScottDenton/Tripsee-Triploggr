require 'faker'

# *********** First round of seeds **************
## Create initial users

# 20.times do
# User.create(name: Faker::Name.name, password: "password", country: Faker::Address.country, city: Faker::Address.state, bio: Faker::GreekPhilosophers.quote)
# end

# # Create locations
# Location.create(country: "USA", city:"Portland")
# Location.create(country: "USA", city:"Seattle")
# Location.create(country: "USA", city:"New York")
# Location.create(country: "USA", city:"Chicago")
# Location.create(country: "USA", city:"Los Angeles")
# Location.create(country: "USA", city:"Las Vegas")
# Location.create(country: "France", city:"Paris")
# Location.create(country: "England", city:"London")
# Location.create(country: "Ireland", city:"Dublin")
# Location.create(country: "Netherlands", city:"Amsterdam")
# Location.create(country: "Australia", city:"Sydney")
# Location.create(country: "Indonesia", city:"Bali")
# Location.create(country: "Japan", city:"Tokyo")
# Location.create(country: "China", city:"Beijing")

# ********** Second round of seeds ***************

## update users with profile images
# User.all.each_with_index do |user, index|
#   user.update(image_url: "https://randomuser.me/api/portraits/men/#{index+1}.jpg")
# end

## create trips
# 50.times do
#   Trip.create(user_id: User.all.sample.id, location_id: Location.all.sample.id)
# end



# ************ Third round of seeds **************

# # Create memories
# activity =["Dinner", "Lunch", "Breakfast", "Show", "Movie", "Museum", "Game", "Bar", "Restaurant", "Park", "Tour"]
# images = ['sports','food','nightlife','city']
# 300.times do
#   Memory.create(trip_id: Trip.all.sample.id, user_id: User.all.sample.id, activity: activity.sample, rating: rand(1..5), description: Faker::Lorem.paragraph_by_chars(1000, false), primary_img: "http://lorempixel.com/200/200/#{images.sample} ")
# end
#
#
# # Create comments
# 1000.times do
#   Comment.create(user_id: User.all.sample.id, memory_id: Memory.all.sample.id, content: Faker::Twitter.status(include_user: false)[:text])
# end
