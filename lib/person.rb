class Person

    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    ###Setters###
    def happiness= happiness
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene= hygiene
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    ###Non-Attributes###
    def clean?
        hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end

    def get_paid salary
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness = friend.happiness + 3
        self.happiness = @happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation listener, topic
        if topic == "politics"
            listener.happiness = listener.happiness - 2
            self.happiness = @happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            listener.happiness = listener.happiness + 1
            self.happiness = @happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end