require_relative 'piece'
require_relative 'stepping_piece'
class Knight < Piece
  include SteppingPiece
  def moves_diff
    return [[1, -2], [2,1], [-1, 2],[-2,1],[1,2],[2, -1],[-1,-2],[-2,-1]]
  end
end
