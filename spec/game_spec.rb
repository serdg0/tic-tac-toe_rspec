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
end