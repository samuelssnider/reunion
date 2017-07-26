class Activity
  attr_reader :name,
              :participants,
              :total_cost

  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = 0
  end

  def add_participant(name, price)
    @total_cost += price
    hash = {name => price}
    @participants.merge!(hash)
  end

  def split
    @total_cost/@participants.count
  end

  def owed
    spent = @participants.values
    owed = spent.map {|spend| spend - split}
    owed_hash = 


end
