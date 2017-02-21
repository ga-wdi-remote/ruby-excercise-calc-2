require "./calculator"


class Tax < Calculator
  attr_accessor :tax, :total_tax

  def initialize(tax)
    # Instance variables
    @tax = tax
    @total_tax
  end

  def calculate_tax(subtotal)
    @total_tax = subtotal * (@tax/100)
  end
end
