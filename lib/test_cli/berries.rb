class TestCli::Berries
  attr_accessor :name, :link, :firmness, :growth_time, :max_harvest
  @@all = []
  
  def initialize(name, link, firmness, growth_time, max_harvest)
      @name = name
      @link = link
      @@all << self
  end
    
  def self.all
      @@all
  end
  
end
  
    