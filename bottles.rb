require_relative 'bottle_number'
require_relative 'bottle_verse'

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
    BottleVerse.new(number).verse
  end
end
