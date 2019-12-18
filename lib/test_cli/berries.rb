class TestCli::Berries
  attr_accessor :name, :link, :firmness, :growth_time, :max_harvest
  @@all = []
  
  
  def initialize(name, link, firmness, growth_time, max_harvest)
    @name = name
    @link = link
    @firmness = firmness
    @growth_time = growth_time
    @max_harvest = max_harvest
    @@all << self
    
  end
  def self.all
      @@all
  end
  
end