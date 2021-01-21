require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def happiness=(points)
        @happiness = points
        if @happiness < 0
            @happiness = 0
        elsif @happiness >10
            @happiness = 10
        else 
            @happiness  
        end
    end
     
    def hygiene=(points)
        @hygiene = points
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        else
            @hygiene 
        end
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(arg)
    end

    def get_paid(paycheck)
        @bank_account += paycheck
        "all about the benjamins"
    end

    def take_bath
       self.hygiene=@hygiene + 4
       "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=@hygiene - 3
        self.happiness=@happiness +2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness=@happiness + 3
        friend.happiness=friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=self.happiness - 2
            friend.happiness=friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=self.happiness + 1
            friend.happiness=friend.happiness + 1
            "blah blah sun blah rain"
        else topic = "other"
            "blah blah blah blah blah"
        end
    end




end
    