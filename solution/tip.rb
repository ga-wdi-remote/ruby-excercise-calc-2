require "./calculator"

class Tip < Calculator
  attr_accessor :tip, :total_tips

  def initialize(tip)
    @tip = tip
    @total_tips
  end

  def tips
    case @tip
    when 1
      @tip = 15.0
    when 2
      @tip = 18.0
    when 3
      @tip = 20.0
    when 4
      puts "Enter another tip percentage"
      @tip = gets.chomp.to_f
    end
  end

  def calculate_tips(subtotal)
    @total_tips = subtotal * (@tip/100)
  end

end

