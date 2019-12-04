class TestCli::Berries
  attr_accessor :name, :growth_time, :max_harvest
  @@all = []
  
  def initialize(name, growth_time, max_harvest)
      @name = name
      @growth_time = growth_time
      @max_harvest = max_harvest
      @@all << self
  end
    
  def self.all
      @@all
  end
  
end
  
    