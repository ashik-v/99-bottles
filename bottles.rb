require_relative "bottle_number"

class Bottles
  def verse(number)
    bottle_number = BottleNumber.for(number)

    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall, #{bottle_number.quantity} #{bottle_number.container} of beer." + "\n" +
      "#{bottle_number.action}, #{bottle_number.successor.quantity} #{bottle_number.successor.container} of beer on the wall.\n"
  end

  def verses(upper, lower)
    upper
      .downto(lower)
      .map(&method(:verse))
      .join("\n")
  end

  def song
    verses(99, 0)
  end
end
