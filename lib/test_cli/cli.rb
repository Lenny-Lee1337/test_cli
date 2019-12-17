class TestCli::CLI
  
  def call
    
    
    list_berries
     
       menu
       
  end
    
    
    def menu
      puts "Enter berry ID for details or type exit"
      input = nil
      while input != "exit"
        input = gets.strip.downcase
        if input.to_i > 0 && input.to_i <= TestCli::Berries.all.length
          #TODO: Pass user input to a list_details method(not yet created)
       
          puts "Berry's info"
          
        elsif input == "exit"
          puts "Bye"
        else
          puts "Try again"
        end
      end
  end
  
  def list_berries
    TestCli::API.new.fetch
    TestCli::Berries.all.each.with_index(1) do |berrys, index|
      puts "#{berrys.name} = #{index}"
    end
      
     
  end
end