require_relative '../config/environment.rb'
require_relative '../app/models/airbnb/guests.rb'
require_relative '../app/models/airbnb/listings.rb'
require_relative '../app/models/airbnb/trips.rb'

def reload
  load 'config/environment.rb'
end



andrew = Guests.new("Andrew")
noura = Guests.new("Noura")
jose =  Guests.new("Jose")

sf = Listings.new("SF")
nyc = Listings.new("NYC")
la = Listings.new("LA")

andrew_trip = Trips.new(andrew, sf)
noura_trip_1 = Trips.new(noura, nyc)
jose_trip_1 = Trips.new(jose, nyc)
jose_trip_2 = Trips.new(jose, sf)
noura_trip_2 = Trips.new(noura, la)
noura_trip_3 = Trips.new(noura,sf)


p Listings.most_popular

p andrew.listings
p jose.listings
p andrew.listings
p jose.listings

p Guests.all
p Guests.pro_traveller
p Guests.find_all_by_name("Noura")


# Pry.start ==> testing using 'p' 