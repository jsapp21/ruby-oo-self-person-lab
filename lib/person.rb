require 'pry'

class Person

    # attr_accessor :bank_account, :happiness, :hygiene
    # attr_reader :name 

    def initialize(name)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def name
        @name
    end
    
    def bank_account #setter
        @bank_account = 25
        # @bank_account += 1 
    end

    def happiness
        @happiness = 8
    end

    def hygiene
        @hygiene = 8
    end


end

#binding.pry 
