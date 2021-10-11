class MyExamplesController < ApplicationController
  def fortune
    fortune = ["Good Luck", "Bad Luck", "Try Again"]
    render json: "#{fortune.sample}"
  end

  def lottery
    numbers = []
    6.times do
      numbers << rand(1...60)
    end

    render json: "Your lottery numbers are #{numbers}."
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
