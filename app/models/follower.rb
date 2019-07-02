class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @life_motto = motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        #returns an Array of this follower's cults
        Bloodoath.all.select{|cult| cult.follower == self}
    end

    def join_cult(cult)
        #takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        Bloodoath.new(cult, "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}", self)
    end

    def self.of_a_certain_age(num)
        #takes a Fixnum argument that is an age and returns an Array of followers who are the given age or older
        @@all.select{|follower| follower.age >= num}

    end
    
    
end