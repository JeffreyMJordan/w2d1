class Piece
  attr_reader :color, :pos
  def initialize(pos, board, color)
    @pos = pos
    @board = board
    @color = color
  end


end
