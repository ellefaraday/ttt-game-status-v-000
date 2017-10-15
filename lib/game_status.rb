# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def won?(board)
  token_check = []
  winning_array = []
  WIN_COMBINATIONS.each do |win_condition|
    win_condition.each do |place|
      token_check << board[place]
    end
    if token_check.all? {|token| "X"}
      winning_array = win_condition
    elsif token_check.all? {|token| "O"}
      winning_array = win_condition
    else
    end
    token_check = []
  end
    if winning_array.empty?
    else
      winning_array
    end
end
puts won?(board)
