class Trips
    attr_accessor :guest, :listing
    @@all = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all << self
        
    end
    
    def listing
        @listing
    end

    def guest
        @guest
    end

    def self.all
        @@all
    end
end