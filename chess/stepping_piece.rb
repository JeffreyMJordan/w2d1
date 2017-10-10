require 'byebug'
module SteppingPiece

  #@pos
  #@board
  #@color
  def moves
    #byebug
    res = []
    moves_diff.each do |diff|
      new_pos = [@pos[0] + diff[0], @pos[1] + diff[1]]
      if valid?(new_pos)
        res << new_pos
      end
    end
    res
  end

  def valid?(pos)
    #Means it's not on the board
    return false if pos[0]<0 || pos[0]>7 || pos[1]<0 || pos[1]>7
    piece = @board[pos]
    if !piece.is_a?(NullPiece)
      return false if piece.color==@color
    end
    true
  end





end
