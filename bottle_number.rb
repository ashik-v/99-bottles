class BottleNumber
  attr_reader :number

  def self.for(number)
    registry.find do |candidate|
      candidate.handles?(number)
    end.new(number)
  end

  def self.registry
    @registry ||= [BottleNumber]
  end

  def self.inherited(candidate)
    registry.prepend(candidate)
  end

  def self.handles?(number)
    true
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
  def self.handles?(number)
    number == 0
  end

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
  def self.handles?(number)
    number == 1
  end

  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end

class BottleNumber6 < BottleNumber
  def self.handles?(number)
    number == 6
  end

  def container
    "six-pack"
  end

  def quantity
    1
  end
end
