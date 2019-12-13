class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
     TestCli::Berries.all.each do |berry|
      puts berry.name
      menu
     end
  end
  
  def menu
        input = nil
      while input!= "no"
        puts "Which berry?"
        input = gets.strip.downcase
        case input
      
  end
end