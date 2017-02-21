class Calculator
  attr_accessor :subtotal_amount, :people_amount, :tip_percentage, :tax_rate, :total, :pp

  def initialize
    @subtotal_amount
    @people_amount
    @tip_percentage
    @tax_rate
    @total
    @pp
  end

  def subtotal  
    puts "What's the subtotal?"
    result = true

    while result do
      @subtotal_amount = gets.chomp
      if @subtotal_amount.match('\d+$')
        @subtotal_amount = @subtotal_amount.to_f
        result = false
      else
        puts "Invalid, please put a number"
      end
    end
    puts @subtotal_amount
  end

  def people
    puts "How many people?"
    result = true
 
    while result do
      @people_amount = gets.chomp
      if @people_amount.match('\d+$')
        @people_amount = @people_amount.to_f
        result = false
      else
        puts "Invalid, please put a number"
      end
    end
    puts @people_amount
  end

  def get_tips
    puts "How much tip would you like to leave?
        1. 15%
        2. 18%
        3. 20%
        4. Other"
    result = true

    while result do 
      @tip_percentage = gets.chomp
      # @tip_percentage = gets.chomp
      # raise 'an issue has occured'
      if @tip_percentage.match(/^[1-4]$/)
        @tip_percentage = @tip_percentage.to_f
        result = false
      else
        puts "Invalid input!"
      end
    end
  end

  def get_tax
    puts "What is the tax rate?"
    result = true
    # @tax_rate = gets.chomp
    while result do
      @tax_rate = gets.chomp
      if @tax_rate.match(/^(?:100|[0-9]?[0-9])$/)
        @tax_rate = @tax_rate.to_f
        result = false
      else
        puts "Invalid, please put a number 0-100"
      end
    end
    # puts @tax_rate
  end

  def get_total(tax, tips)
    # puts 'getting total'
    # puts tax
    # puts tips
    @total = @subtotal_amount + tax + tips
    self.get_pp
  end

  def get_pp
    @pp = (@total/@people_amount).round(2)
  end

end
