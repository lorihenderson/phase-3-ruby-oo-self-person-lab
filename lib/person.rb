# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene, :happy, :clean
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        self.happiness
        if @happiness > 7
            true
        elsif @happiness <= 7
            false
        end
    end

    def clean?
        self.hygiene
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
    
        "all about the benjamins"
        # binding.pry
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end