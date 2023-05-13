class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end
  def quantity
    number.to_s
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def successor
    number - 1
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end

  def to_s
    "#{quantity} #{container}"
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end

  def successor
    99
  end

  def action
    "Go to the store and buy some more"
  end
end
