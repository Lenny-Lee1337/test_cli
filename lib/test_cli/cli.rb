class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
     TestCli::Berries.all.each_with_index do |berry, index|
      puts "#{berry.name} = #{index}"
     end
     
     menu
  end
    
    
    def menu
      input = nil
      while input != "exit"
       puts "Enter Berry ID:"
        input = gets.strip.downcase
        case input
        when "no"
          puts "Berry's info"
          
        else
          puts "ok..."
         
       end
      end
  end
end