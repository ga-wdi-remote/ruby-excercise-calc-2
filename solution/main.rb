require "./tax"
require "./tip"
require "./calculator"

calculator = Calculator.new

calculator.subtotal

calculator.people
calculator.get_tips

tip = Tip.new(calculator.tip_percentage)
tip.tips

calculator.get_tax
tax = Tax.new(calculator.tax_rate)

tax.calculate_tax(calculator.subtotal_amount)
tip.calculate_tips(calculator.subtotal_amount)
calculator.get_total(tax.total_tax, tip.total_tips)


puts "Total bill is #{calculator.total}"
puts "Each person pays #{calculator.pp}"
