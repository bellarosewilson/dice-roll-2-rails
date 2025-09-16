class DiceController < ApplicationController
  def index
    # This will render the homepage
  end
  
  def two_six
    @rolls = []
    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
  end
  
  def two_ten
    @rolls = []
    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end
  end
  
  def one_twenty
    @rolls = []
    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end
  end
  
  def five_four
    @rolls = []
    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end
  end
  
  # Dynamic route handler for any number of dice and sides
  def roll
    @num_dice = params[:number_of_dice].to_i
    @sides = params[:how_many_sides].to_i
    @rolls = []
    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end
    render :randomdice
  end
end
