class TestCli::Berries
  attr_accessor :name, :link
  @@all = []
  
  def initialize(name, link)
      @name = name
      @link = link
      @@all << self
  end
    
  def self.all
      @@all
  end
  
end
  
    