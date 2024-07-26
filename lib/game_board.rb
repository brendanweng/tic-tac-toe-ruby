class Board
  
  attr_accessor :board, :players, :current_player

  def initialize(player_one, player_two)
    @board = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @players = [player_one, player_two]
    @current_player = 0
  end 

  def play_move(x)
    if check_square?(x)
      if current_player == 0
        self.board[x] = 'X'
        self.current_player = 1
      else
        self.board[x] = 'O'
        self.current_player = 0    
      end
      show_board
    else
      puts "Square #{x} has already been played. Please choose another move."  
    end
  end

  protected

  def show_board
    puts "#{board[0]} #{board[1]} #{board[2]} "
    puts "#{board[3]} #{board[4]} #{board[5]} "
    puts "#{board[6]} #{board[7]} #{board[8]} "
    puts 
  end

  def check_square?(x)
    self.board[x] == '-'

  end
end

class Player 
  def initialize(name)
    @name = name
  end
end

new_game = Board.new('Brendan', 'Bob')

new_game.play_move(1)
new_game.play_move(0)
new_game.play_move(2)
new_game.play_move(2)
new_game.play_move(2)
new_game.play_move(0)
new_game.play_move(4)