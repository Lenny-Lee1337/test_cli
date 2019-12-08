#Our CLI controller
class TestCli::CLI
  
  def call
    puts "Which berry?"
   # list_berries
    
    
    TestCli::API.new.fetch
    TestCLI::Berries.all.each do |berry|
        puts berry.name
        
      end
      
    
    
    def pick_berry
      input = nil
      while input!= "exit"
        puts "Which Berry do you want info for"
        input = gets.strip.downcase
        case input
        when "cheri"
          puts ""
    
  end
  
end
end