def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  else

    if board[index] == 'X' || board[index] == 'O'
      false
    else
      true
    end

  end
end

def move(board, index, token='X')
  if valid_move?(board, index) == true
    board[index] = token
    board
  end
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets

  if valid_move?(board, input_to_index(input)) == false
    turn(board)
  end

  display_board(move(board, input_to_index(input)))
end

"board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)
turn(board)"