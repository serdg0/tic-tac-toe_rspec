require './lib/tic-tac-toe'

RSpec.describe Board do
  let(:board) { Board.new }
  let(:player) { Player.new }
  describe "#check_cell_occupied?" do

        it "return false for an empty cell in a new board" do
            expect(board.check_cell_occupied?(1)).to eql(false)
        end

        it "returns true for an occupied cell" do
            player.color = "X"
            board.return_board_input(1, player)
            expect(board.check_cell_occupied?(1)).to eql(true)
        end
    end

    describe "#check_winner?" do

        it "returns true if top row is the winner" do
            player.color = "X"
            board.return_board_input(1, player)
            board.return_board_input(2, player)
            board.return_board_input(3, player)
            expect(board.check_winner?(player)).to eql(true)
        end

        it "returns true if middle row is the winner" do
            player.color = "X"
            board.return_board_input(4,player)
            board.return_board_input(5,player)
            board.return_board_input(6,player)
            expect(board.check_winner?(player)).to eql(true)
        end

        it "returns true if bottom row is the winner" do
            player.color = "X"
            board.return_board_input(7,player)
            board.return_board_input(8,player)
            board.return_board_input(9,player)
            expect(board.check_winner?(player)).to eql(true)
        end

        it "returns true if first column is the winner" do
            player.color = "X"
            board.return_board_input(1,player)
            board.return_board_input(4,player)
            board.return_board_input(7,player)
            expect(board.check_winner?(player)).to eql(true)
        end

        it "returns true if second column is the winner" do
            player.color = "X"
            board.return_board_input(2,player)
            board.return_board_input(5,player)
            board.return_board_input(8,player)
            expect(board.check_winner?(player)).to eql(true)
        end

        it "returns true if third column is the winner" do
            player.color = "X"
            board.return_board_input(3,player)
            board.return_board_input(6,player)
            board.return_board_input(9,player)
            expect(board.check_winner?(player)).to eql(true)
        end

        it "returns true if first diagonal is the winner" do
            player.color = "X"
            board.return_board_input(1,player)
            board.return_board_input(5,player)
            board.return_board_input(9,player)
            expect(board.check_winner?(player)).to eql(true)
        end

        it "returns true if second diagonal is the winner" do
            player.color = "X"
            board.return_board_input(3,player)
            board.return_board_input(5,player)
            board.return_board_input(7,player)
            expect(board.check_winner?(player)).to eql(true)
        end
    
    end
end
