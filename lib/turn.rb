def display_board(board)
    to_cell = Proc.new {|row| row.map {|cell| " #{cell} "}.join("|")}
    
    board.each_slice(3)
    .map(&to_cell)
    .zip(Array.new(2).fill("-" * 11))
    .each {|row| puts row}
end

def valid_move?(board, index)
    index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
    position = board[index]
    if position == "X" || position == "O" then return true end
    ![" ", "", nil].any? {|empty| empty == position}
end

def input_to_index(input)
    input.to_i - 1
end
  
def move(board, index, player = "X")
    board[index] = player
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    
    if valid_move?(board, index)
        move(board, index)
        display_board(board)
    else
        turn(board)
    end
end