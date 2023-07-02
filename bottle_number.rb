class BottleNumber
  attr_reader :number

  def self.for(number)
    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    else
      BottleNumber
    end.new(number)
  end

  def initialize(number)
    @number = number
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def quantity
    number.to_s
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def successor
    number - 1
  end
end

class BottleNumber0 < BottleNumber
  def action
    "Go to the store and buy some more"
  end

  def quantity
    "no more"
  end

  def successor
    99
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end
