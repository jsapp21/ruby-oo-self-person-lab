# did with Marty

class Person

    attr_accessor :bank_account
    # accessor both reader & writter 

    attr_reader :name, :happiness, :hygiene
    #reader is the getter for these methods

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # setter method = why is @ being called here, where did num come from?
    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    # setter method = why is @ being called here, where did num come from?
    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    # why no @ here
    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    # how did this happen with out bank-account?
    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3 
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1 
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

end

# binding.pry  