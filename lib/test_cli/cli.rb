class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
    list_berries
    menu
       
  end
    
    
    def menu
      
      input = nil
      while input != "exit"
      puts "Enter berry ID for firmness or type exit"
        input = gets.strip.downcase
        if input.to_i > 0 && input.to_i <= TestCli::Berries.all.length
          list_details(input)
       
          
          
        elsif input == "exit"
          puts "Bye"
        else
          puts "Not a valid ID"
        end
      end
  end
  
  def list_berries
    
    TestCli::Berries.all.each.with_index(1) do |berrys, index|
      puts "#{berrys.name} = #{index}"
    end
      
     
  end
  
  def list_details(index)
    
    berry = TestCli::Berries.all[index.to_i - 1]
      puts berry.firmness
  
    
end
end