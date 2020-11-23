class Listings
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def guests
        trips = Trips.all.select { |trip| trip.listing == self}
        trips.collect { |trip| trip.guest}
    end
    
    def trips
        Trips.all.select { |trip| trip.listing == self}
    end

    def trip_count
        trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select { |listing| listing.city == city}
    end


    def self.most_popular

        # build a counter hash with listings and occurence => counter
        trip_counter = {}
        Trips.all.map do |trip| 
            if !trip_counter[trip.listing]
                trip_counter[trip.listing] = 1
            else 
                trip_counter[trip.listing] +=1   
            end
        end

        most_trips = 0
        most_listing = Listings.new("dummy");
        trip_counter.map do |city, stays|
            if stays > most_trips
                most_trips = stays
                most_listing = city
            end

        end   
        return most_listing
    end

    

end