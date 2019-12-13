class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
     TestCli::Berries.all.each_with_index do |berry, index|
      puts berry.name
      puts index
      
     end
      puts "Enter Berry ID:"
     menu
     
     
  end
  
  
  def menu
    TestCli::API.new.fetch
     TestCli::Berries.all.each do |berry, index|
    
     input =nil
    
     input = gets.strip.downcase
       if input == index
          puts "berry's info"
        else
           puts "Not a valid ID"
        
     end
  end

  
end

end

