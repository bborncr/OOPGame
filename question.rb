module MathGame

  class Question

    attr_reader :correct_answer

    def initialize
      @rand1
      @rand2
      @correct_answer
    end

    def new_question
      @rand1 = rand(10)
      @rand2 = rand(10)
      @correct_answer = @rand1 + @rand2
      "What is #{@rand1} plus #{@rand2}?"
    end

  end

end