# frozen_string_literal: true

require './lib/tic-tac-toe'

RSpec.describe Game do
  let(:game) { Game.new }
  let(:board) { Board.new }
  let(:player_1) { Player.new }
  let(:player_2) { Player.new }
  let(:comp_game) { Game.new(player_1, player_2, board) }

  describe '#current_name' do
    it 'displays the name of a player' do
      player_1.name = 'paul'
      expect(game.current_name(player_1)).to eql('paul')
    end
  end

  describe '#player_turn' do
    it 'displays the player which current turn corresponds' do
      expect(comp_game.player_turn(5)).to eql(player_2)
    end
  end

  describe '#not_repeated' do
    it 'return is a cell is occupied or not' do
      expect(comp_game.not_repeated(2)).to eql(false)
    end
  end

  describe '#switch_board' do
    it 'changes de flag of the cell of the board to true' do
      player_1.color = 'X'
      expect(comp_game.switch_board(1, player_1)).to eql(true)
    end
  end

  describe '#winner?' do
    it 'returns false if there is no winner' do
      expect(comp_game.winner?(player_1)).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]])
    end
    it 'returns true for winning player' do
      comp_game.switch_board(1, player_1)
      comp_game.switch_board(2, player_1)
      comp_game.switch_board(3, player_1)
      expect(comp_game.winner?(player_1)).to eql(true)
    end
  end
end
