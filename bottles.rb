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
    bottle_number = bottle_number_for(number)
    next_bottle_number = bottle_number_for(bottle_number.successor)

     "#{bottle_number} ".capitalize + "of beer on the wall, " +
     "#{bottle_number} of beer.\n" +
     "#{bottle_number.action}, " +
     "#{next_bottle_number} " +
     "of beer on the wall.\n"
  end

  def bottle_number_for(number)
    (number == 0 ? BottleNumber0 : BottleNumber).new(number)
  end
end
