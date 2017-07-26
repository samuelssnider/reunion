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
    spent = @participants.to_a
    spent.map do |spend|
      spend[1] = split - spend[1] 
    end
    spent.to_h
  end


end
