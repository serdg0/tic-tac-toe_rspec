require './lib/tic-tac-toe'

RSpec.describe Game do

    describe "#current_name" do
        
        it "displays the name of a player" do
            game = Game.new
            player = Player.new
            player.name = "paul"
            expect(game.current_name(player)).to eql("paul")
        end
    end

    describe "#player_turn" do
        it "displays the player which current turn corresponds" do
            board = Board.new
            player_1 = Player.new
            player_2 = Player.new
            game = Game.new(player_1, player_2, board)
            expect(game.player_turn(5)).to eql(player_2)
        end
    end

end