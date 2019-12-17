class TestCli::CLI
  
  def call
    
    
    list_berries
     
      
      
     #menu
  end
    
    
    # def menu
    #   input = nil
    #   while input != "exit"
       
    #     input = gets.strip.downcase
    #     if input.to_i > 0 && < TestCli::Berries.all.length
    #       #TODO: Pass user input to a list_details method(not yet created)
       
    #       puts "Berry's info"
          
    #     elsif == "exit"
    #       puts "Bye"
    #     else
    #       puts "Try again"
    #   end
    #   end
  
  
  def list_berries
    TestCli::API.new.fetch
    TestCli::Berries.all.each.with_index(1) do |berrys, index|
      puts "#{berrys.name} = #{index}"
    end
      
     
  end
end