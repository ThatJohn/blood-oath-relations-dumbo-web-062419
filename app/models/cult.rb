class Cult

    attr_reader :name, :location
    attr_accessor :slogan

    @@allcults = []
    @@cultfollowers = []

    def initialize(cult_name, location, founded)
        @cultname = cult_name
        @location = location
        @founded  = founded

        @@allcults << self
    end

    def name
        @cultname
    end

    def location
        @location
    end

    def founded
        @founded
    end

    def set_slogan(slogan)
        @slogan = slogan
    end

    def slogan
        @slogan
    end

    def recruit_follower(follower)
        @@cultfollowers << follower
    end

    def cult_population
        @@cultfollowers.length
    end

    def self.all
        @@allcults
    end


end