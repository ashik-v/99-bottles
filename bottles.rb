class Bottles
  def verse(number)
    if number == 2
      "2 bottles of beer on the wall, 2 bottles of beer." + "\n" +
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer." + "\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number == 0
      "No more bottles of beer on the wall, no more bottles of beer." + "\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer." + "\n" +
        "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(upper, lower)
    upper
      .downto(lower)
      .map(&method(:verse))
      .join("\n")
  end
end