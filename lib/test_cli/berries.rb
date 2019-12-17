class TestCli::Berries
  attr_accessor :name, :link, :firmness
  @@all = []
  
  
  def initialize(name, link, firmness)
    @name = name
    @link = link
    @firmness = firmness
    @@all << self
    
  end
  def self.all
      @@all
  end
  
end