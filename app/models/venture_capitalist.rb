class VentureCapitalist

  attr_reader :name, :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth

    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |venture_capitalist_instance|
      venture_capitalist_instance.total_worth.to_s.length > 9
    end 
  end

end
