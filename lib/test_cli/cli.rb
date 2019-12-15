class TestCli::CLI
  
  def call
    
    TestCli::API.new.fetch
     
      list_berries
       menu
     end
       
     
     
  
  
  
  def menu
    
    puts "Enter Berry ID:"
    
    TestCli::API.new.fetch
     TestCli::Berries.all.each do |index|
    
     input =nil
    
     input = gets.strip.downcase
       when 
         input == index
          display_berry_details
        else
           puts "Not a valid ID"
        
        end
  end
end

  


def list_berries
  TestCli::Berries.all.each_with_index do |berry, index|
      puts "#{berry.name} = #{index}"
      
      
end
end

def display_berry_details

TestCli::API.new.fetch_details
TestCli::Details.all.each do |firmness, growth_time, max_harvest|
  puts firmness
  puts growth_time
  puts max_harvest
end
end

end
