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

board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
def won?(board)
  winner? = []
  WIN_COMBINATIONS.each do |win|
    win.each do |place|
      winner? << board[place]
    end
    if winner?.all? {|token| == "X"}
      winner = WIN_COMBINATIONS[win]
    elsif winner?.all? {|token| == "O"}
      winner = WIN_COMBINATIONS[win]
    else
    end
    winner? = []
  end
    winner
end
puts won?(board)
