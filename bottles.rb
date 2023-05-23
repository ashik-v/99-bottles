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
    bottle_number = (number == 0 ? BottleNumber0 : BottleNumber).new(number)
    successor = bottle_number.successor
    next_bottle_number = (successor == 0 ? BottleNumber0 : BottleNumber).new(successor)

     "#{bottle_number}".capitalize + " of beer on the wall, " +
       "#{bottle_number}" + " of beer.\n" +
       "#{bottle_number.action}, " +
       "#{next_bottle_number}"+" of beer on the wall.\n"
  end
end
