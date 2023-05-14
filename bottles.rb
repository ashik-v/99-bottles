require_relative 'bottle_number'

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
    bottle_number = BottleNumber.for(number)

    "#{bottle_number} ".capitalize + "of beer on the wall, " +
     "#{bottle_number} of beer.\n" +
     "#{bottle_number.action}, " +
     "#{bottle_number.successor} " +
     "of beer on the wall.\n"
  end
end
