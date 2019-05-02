def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if position_taken?(board,index) == true
    return false
  else
    if index.between?(0,8)
      return true
    else
      return false
    end
  end
end


def position_taken?(board,index)
  if board[index] == "   "
    return false
  elsif board[index] == "  "
    return false
  elsif board[index] == " "
      return false
  elsif board[index] == ""
        return false
  elsif board[index] == nil
          return false
  else
    return true
  end
end

def input_to_index(userinput)
   userinput.to_i - 1
end

def move(board, userinput, playerCharacter = "X")
  board[userinput] = playerCharacter
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  userInput = gets.strip
  index = input_to_index(userInput)
    if valid_move?(board,index)
      move(board, index, playerCharacter = "X")
    else
      turn(board)
    end
end
