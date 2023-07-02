class Bottles
  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer." + "\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "#{number} #{quantity(number)} of beer on the wall, #{number} #{quantity(number)} of beer." + "\n" +
        "Take #{pronoun(number)} down and pass it around, #{successor(number)} #{quantity(number - 1)} of beer on the wall.\n"
    else
      "#{number} #{quantity(number)} of beer on the wall, #{number} #{quantity(number)} of beer." + "\n" +
        "Take #{pronoun(number)} down and pass it around, #{successor(number)} #{quantity(number - 1)} of beer on the wall.\n"
    end
  end

  def quantity(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def successor(number)
    if number == 1
      "no more"
    else
      number - 1
    end
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