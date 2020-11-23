class Guests
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        trips = Trips.all.select { |trip| trip.guest == self}
        trips.collect { |trip| trip.listing}
    end

    def trips 
        Trips.all.select { |trip| trip.guest == self }
    end

    def self.all 
        @@all
    end

    def self.pro_traveller
        self.all.select { |guest| guest.trips.length > 1}
    end

    def self.find_all_by_name(name)
        self.all.select { |guests| guests.name == name} 
    end
end