require_relative "bottle_number"

class Bottles
  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer." + "\n" +
      "#{action(number)}, #{quantity(successor(number))} #{container(number - 1)} of beer on the wall.\n"
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

  private

  def action(number)
    BottleNumber.new(number).action(number)
  end

  def quantity(number)
    BottleNumber.new(number).quantity(number)
  end

  def container(number)
    BottleNumber.new(number).container(number)
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun(number)
  end

  def successor(number)
    BottleNumber.new(number).successor(number)
  end
end