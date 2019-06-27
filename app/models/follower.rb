class Follower

    attr_reader :follower

    @@all = []

    def initialize(follower)
        @follower = follower
        @vow = ""

        @@all << self
    end

    def self.all
        @@all
    end

end