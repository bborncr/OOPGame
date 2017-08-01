module MathGame

  class Game

    def initialize
      @player1 = MathGame::Player.new("Player One")
      @player2 = MathGame::Player.new("Player Two")
      @current_player = @player1
      @question_generator = MathGame::Question.new
      start_game
    end

    def players_still_alive?
      @player1.alive? && @player2.alive?
    end

    def start_game
      while players_still_alive?
        puts "Current Score -- P1:#{@player1.lives}  P2:#{@player2.lives}"
        question = @question_generator.new_question
        puts "#{@current_player.name}: #{question}"
        guess = gets.chomp.to_i
        right_answer = @question_generator.correct_answer
        if guess == right_answer
          puts "Correct!"
        else
          puts "Wrong! #{@current_player.name} loses a life!"
          @current_player.lose_life
        end
        @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
      end
      puts "---GAME OVER---"
      exit

    end 

  end

end