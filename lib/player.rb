class Player

  attr_accessor :name, :HP

  def initialize(name)
    @name = name
    @HP = 100
  end

  def attack
    @HP -= 10
  end

  def name
    @name
  end
end
