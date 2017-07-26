class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, price)
    hash = {name => price}
    @participants.merge(hash)
  end

end
