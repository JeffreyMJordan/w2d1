require 'byebug'
require_relative 'piece'
require_relative 'display'
require_relative 'null_piece'
class Board
  attr_reader :grid

  def initialize
    @grid = populate


  end

  def populate
    chess_board = Array.new(8) {Array.new(8){NullPiece.new}}
    chess_board[0][0] = King.new([0,0], self, :white)
    chess_board[0][1] = King.new([0,1], self, :white)
    chess_board[1][0] = King.new([1,0], self, :black)
    chess_board

  end

  def move_piece(start_pos, end_pos)
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def []=(pos, val)
    @grid[pos[0]][pos[1]] = val
  end



end
