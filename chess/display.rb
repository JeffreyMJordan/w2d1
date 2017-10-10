require_relative 'board'
require 'colorize'
class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    string = ""
    @board.grid.each_with_index do |row, idx|
      row.each_with_index do |el, idx2|
        if @cursor.cursor_pos == [idx, idx2]
          if @cursor.selected
            string += "^".blue
          else
            string += "^".red
          end
        else
          string += "b"
        end
      end
      string += "\n"
    end
    puts string
    @cursor.get_input
    p @cursor.cursor_pos
  end


end
