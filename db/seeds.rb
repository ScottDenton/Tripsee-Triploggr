

require 'faker'

# 20.times do
# User.create(name: Faker::Name.name, password: "password", country: Faker::Address.country, city: Faker::Address.state, bio: Faker::GreekPhilosophers.quote)
# end



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

# 50.times do
#   Trip.create(user_id: User.all.sample.id, location_id: Location.all.sample.id)
# end

 # Memory.create(trip_id: 1, user_id: 1, activity: "Stuff in Seattle", rating: 3, short_desc: "didnt do much", long_desc: "really didnt do much")
 #
 # Comment.create(user_id: 1, memory_id: 1, content: "Comment testing")

activity =["Dinner", "Lunch", "Breakfast", "Show", "Movie", "Museum", "Game", "Bar", "Restaurant", "Park", "Tour"]

images = ['sports','food','nightlife','city']

500.times do
  Memory.create(trip_id: Trip.all.sample.id, user_id: User.all.sample.id, activity: activity.sample, rating: rand(1..5), description: Faker::GreekPhilosophers.quote, primary_img: "http://lorempixel.com/200/200/#{images.sample} ")

end
