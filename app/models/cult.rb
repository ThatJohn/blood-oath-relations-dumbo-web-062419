class Cult
    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :followers
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def self.all
        @@all
    end

    def location
        @location
    end

    def founding_year
        @founding_year
    end

    def slogan
        @slogan
    end

    def recruit_follower(follower)
        #takes in an argument of a Follower instance and adds them to this cult's list of followers
        Bloodoath.new(self, "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}", follower)
    end

    def cult_population
        #returns a Fixnum that is the number of followers in this cult
        Bloodoath.all.select{|oath| oath.cult == self}.length
    end

    def self.find_by_name(name)
        #takes a String argument that is a name and returns a Cult instance whose name matches that argument
        Bloodoath.all.select{|oath| oath.follower == name}
    end

    def self.find_by_founding_year(year)
        #takes a Fixnum argument that is a year and returns all of the cults founded in that year
        @@all.find{|oath| oath.founding_year == year}
    end

end