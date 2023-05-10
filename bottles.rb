require_relative "bottle_number"

class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper
      .downto(lower)
      .map(&method(:verse))
      .join("\n")
  end

  def verse(number)
    bottle_number =  BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)

     "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall, #{bottle_number.quantity} #{bottle_number.container} of beer." + "\n" +
       "#{bottle_number.action}, #{next_bottle_number.quantity} #{next_bottle_number.container} of beer on the wall.\n"
  end

  private

  def quantity(number)
    BottleNumber.new(number).quantity
  end

  def container(number)
    BottleNumber.new(number).container
  end

  def action(number)
    BottleNumber.new(number).action
  end

  def successor(number)
    BottleNumber.new(number).successor
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun
  end
end
