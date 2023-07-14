require_relative 'bottle_number'

class BottleVerse
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def verse
    bottle_number = BottleNumber.for(number)

    "#{bottle_number}".capitalize + " of beer on the wall, " +
      "#{bottle_number}" + " of beer.\n" +
      "#{bottle_number.action}, " +
      "#{bottle_number.successor}"+" of beer on the wall.\n"
  end
end