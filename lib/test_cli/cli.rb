class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
    list_berries
    menu
       
  end
    
    
    def menu
      
      input = nil
      while input != "exit"
      puts "Type in the berry's ID (1-#{TestCli::Berries.all.length}) and press enter or type exit to quit"
        input = gets.strip.downcase
        if input.to_i > 0 && input.to_i <= TestCli::Berries.all.length
          list_details(input)
        elsif input == "exit"
          puts "Bye"
        else
          puts "Not a valid ID"
          #list_berries 
          #Uncomment list_berries to re-list the berries when ID invalid
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
    TestCli::API.fetch_details(berry)
      puts "name: #{berry.name}"
      puts "firmness: #{berry.firmness}"
      puts "growth time: #{berry.growth_time}"
      puts "max harvest: #{berry.max_harvest}"
  
    
end
end