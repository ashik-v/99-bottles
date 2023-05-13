class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end
  def quantity
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
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
