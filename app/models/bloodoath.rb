class BloodOath

    attr_reader :follower, :cult
    attr_accessor :oath

    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult

        @@all << self
    end


    def self.all
        @@all
    end

end