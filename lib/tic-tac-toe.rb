# frozen_string_literal: true

require_relative 'player.rb'
require_relative 'board.rb'

class Game
  attr_accessor :turn, :player_1, :player_2, :board

  def initialize(player_1 = nil, player_2 = nil, board = nil)
    @player1 = player_1
    @player2 = player_2
    @board = board
    @turn = 0
  end

  def set_players
    puts "

        HEEEELLooOO


        　         　 　　 　 ·
        　  * .
        　 　　 *　　 *  　 .         　 　　 　 ·
        　  * .
        　 　　 *　　 *  　 .

 　　 　 ·
        　  * .
        　 　　 *　　 *  　 .



        ███████▓█████▓▓╬╬╬╬╬╬╬╬▓███▓╬╬╬╬╬╬╬▓╬╬▓█
        ████▓▓▓▓╬╬▓█████╬╬╬╬╬╬███▓╬╬╬╬╬╬╬╬╬╬╬╬╬█
        ███▓▓▓▓╬╬╬╬╬╬▓██╬╬╬╬╬╬▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
        ████▓▓▓╬╬╬╬╬╬╬▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
        ███▓█▓███████▓▓███▓╬╬╬╬╬╬▓███████▓╬╬╬╬▓█
        ████████████████▓█▓╬╬╬╬╬▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬█
        ███▓▓▓▓▓▓▓╬╬▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
        ████▓▓▓╬╬╬╬▓▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
        ███▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
        █████▓▓▓▓▓▓▓▓█▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
        █████▓▓▓▓▓▓▓██▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
        █████▓▓▓▓▓████▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
        ████▓█▓▓▓▓██▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
        ████▓▓███▓▓▓▓▓▓▓██▓╬╬╬╬╬╬╬╬╬╬╬╬█▓╬▓╬╬▓██
        █████▓███▓▓▓▓▓▓▓▓████▓▓╬╬╬╬╬╬╬█▓╬╬╬╬╬▓██
        █████▓▓█▓███▓▓▓████╬▓█▓▓╬╬╬▓▓█▓╬╬╬╬╬╬███
        ██████▓██▓███████▓╬╬╬▓▓╬▓▓██▓╬╬╬╬╬╬╬▓███
        ███████▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬████
        ███████▓▓██▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓████
        ████████▓▓▓█████▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█████
        █████████▓▓▓█▓▓▓▓▓███▓╬╬╬╬╬╬╬╬╬╬╬▓██████
        ██████████▓▓▓█▓▓▓╬▓██╬╬╬╬╬╬╬╬╬╬╬▓███████
        ███████████▓▓█▓▓▓▓███▓╬╬╬╬╬╬╬╬╬▓████████
        ██████████████▓▓▓███▓▓╬╬╬╬╬╬╬╬██████████
        ███████████████▓▓▓██▓▓╬╬╬╬╬╬▓███████████


            R u Ready to play some

                    TickTackToe


        What is your name ....    ??????

            ".red
    @player1.name = gets.chomp
    @player1.color = 'X'.red
    puts "

    Your icon is #{@player1.color}. You will make the first shot"
    puts "

    "
    puts '               And your name is ...?'.red
    @player2.name = gets.chomp
    @player2.color = 'O'.blue
    puts "Your icon is #{@player2.color}. You will go second"
    @player1
  end

  def current_name(current_player)
    current_player.name
  end

  def turn_count
    @turn += 1
  end

  def player_turn(turn)
    if turn.even?
      @player1
    else
      @player2
    end
  end

  def draw
    puts "

    This is a draw .... :/


            Shouldn't You Play Again ....



    Or some




    ___
    (._.)
    <|>
    _/\_

    ".yellow
  end

  def get_input(current_name)
    puts "

    Make your shot, #{current_name}"
    input = gets.chomp
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    if array.include?(input.to_i)
      input.to_i
    else
      puts "

      Not a valid input, put another one"
      return get_input(current_name)
    end
  end

  def not_repeated(input)
    if @board.check_cell_occupied?(input)
      puts "

      Opps cell occupied, ;) try another one"
      true
    else
      false
    end
  end

  def switch_board(input, current_player)
    @board.return_board_input(input, current_player)
  end

  def winner?(current_player)
    @board.check_winner?(current_player)
  end

  def display_board
    @board.new_board
  end
end

class TicTacToe
  def initialize(game)
    @game = game
  end

  def start
    current_player = @game.set_players
    @game.display_board

    while @game.turn <= 9
      if @game.turn == 9
        @game.draw
        break
      end
      input = @game.get_input(@game.current_name(current_player))
      input_not_repeated = @game.not_repeated(input)
      next unless input_not_repeated == false

      @game.switch_board(input, current_player)
      if @game.winner?(current_player) == true
        puts "  #{@game.current_name(current_player)}


          WINS!


                              ......................
                              ...................
                              .............
                              ......

          ──────▄▀▄─────▄▀▄
          ─────▄█░░▀▀▀▀▀░░█▄
          ─▄▄──█░░░░░░░░░░░█──▄▄
          █▄▄█─█░░▀░░┬░░▀░░█─█▄▄█

          ".blink.yellow.red_background
        puts 'If you want to play again type Y, if not type anything else'
        re_game = gets.chomp
        if re_game.include?['y', 'Y']
          player_one = Player.new
          player_two = Player.new
          main_board = Board.new
          main_game = Game.new(player_one, player_two, main_board)
          TicTacToe.new(main_game).start
        else
          puts 'Game Over. Thank you for playing!'
          break
        end
      end
      @game.turn = @game.turn_count
      current_player = @game.player_turn(@game.turn)
    end
  end
end
