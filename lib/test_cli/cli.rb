class TestCli::CLI
  
  def call
    
    
    list_berries
     
       menu
       
  end
    
    
    def menu
      
      input = nil
      while input != "exit"
      puts "Enter berry ID for firmness or type exit"
        input = gets.strip.downcase
        if input.to_i > 0 && input.to_i <= TestCli::Berries.all.length
          
       
          list_details
          
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
  
  def list_details
    Test::CLI.new.fetch
    TestCli::Berries.all.each do |firmness|
      puts firmness
    end
    
end
end