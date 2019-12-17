class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
     puts "which berry"
     list_berries
     menu
  end
    
    
    def menu
      input = nil
      while input != "exit"
       
        input = gets.strip.downcase
         if input.to_i > 0 && < TestCli::Berries.all.length
           #TODO: Pass user input to a list_details method(not yet created)
       
          puts "Berry's info"
          
        elsif == "exit"
          puts "Bye"
        else
          puts "Try again"
       end
      end
  
  
  def list_berries
    TestCli::Berries.all.each.with_index(1) do |berry, index|
      puts "#{berry.name} = #{index}"
     end
  end
end