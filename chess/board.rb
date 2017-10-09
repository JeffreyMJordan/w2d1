require_relative 'require'
class Board
  attr_reader :grid

  def initialize
    @grid = populate


  end

  def populate
    chess_board = Array.new(8) {Array.new(8){NullPiece.new}}
    chess_board[0][0] = Piece.new
    chess_board

  end

  def move_piece(start_pos, end_pos)
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end

  def [](pos)
    @grid[pos[:row]][pos[:col]]
  end

  def []=(pos, val)
    @grid[pos[:row]][pos[:col]] = val
  end



end
