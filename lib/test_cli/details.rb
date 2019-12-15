class TestCli::Details
  attr_accessor :firmness, :growth_time, :max_harvest
  @@all = []
  
  def initialize(firmness, growth_time, max_harvest)
      @firmness = firmness
      @growth_time = growth_time
      @max_harvest = max_harvest
      @@all << self
  end
    
  def self.all
      @@all
  end
  
end