class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
     TestCli::Berries.all.each do |berry|
      puts berry.name
     end
  end
  
  def menu
        input = nil
      while input!= "no"
        puts "Do you want info on this berry? yes/no"
        input = gets.strip.downcase
        case input
        when "yes"
          puts link
          
        else
          puts "ok..."
         
       end
      end
  end
end