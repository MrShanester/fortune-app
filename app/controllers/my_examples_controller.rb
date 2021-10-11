class MyExamplesController < ApplicationController
  def fortune
    fortune = ["Good Luck", "Bad Luck", "Try Again"]
    render json: "#{fortune.sample}"
  end

  def lottery
    lottery_num = rand(1...60)
    render json: "Your lottery number is #{lottery_num}."
  end

  def beer
    i = 99
    lyrics = ""
    99.times do
      lyrics = lyrics + " #{i} bottles of beer on the wall, #{i} bottles of beer.
      Take one down and pass it around, #{i - 1} bottles of beer on the wall. "
      i -= 1
    end
    render json: lyrics
  end
end
