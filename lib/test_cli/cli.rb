class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
    TestCli::Berries.all.each.do |berry|
      puts berry.name
      
    end
  end
end
end