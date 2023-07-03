class BottleNumber
  attr_reader :number

  def self.for(number)
    begin
      const_get("BottleNumber#{number}")
    rescue
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
    BottleNumber.for(number - 1)
  end

  def to_s
    "#{quantity} #{container}"
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
    BottleNumber.for(99)
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
