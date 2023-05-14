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
  def quantity
    number.to_s
  end

  def container
    "bottles"
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def successor
    BottleNumber.for(number - 1)
  end

  def pronoun
    "one"
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
    BottleNumber.for(99)
  end

  def action
    "Go to the store and buy some more"
  end
end

class BottleNumber1 < BottleNumber
  def pronoun
    "it"
  end

  def container
    "bottle"
  end
end
