class BottleNumber
  attr_reader :number, :registry

  def self.for(number)
    registry.find{ |candidate| candidate.handles?(number)}.new(number)
  end

  def self.registry
    @registry ||= []
  end

  def self.inherited(candidate)
    register(candidate)
  end

  def self.register(candidate)
    registry.prepend(candidate)
  end

  def initialize(number)
    @number = number
  end

  def self.handles?(number)
    true
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

  register(self)
end

class BottleNumber0 < BottleNumber
  def self.handles?(number)
    number == 0
  end
  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
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
  def quantity
    "1"
  end

  def container
    "six-pack"
  end
end