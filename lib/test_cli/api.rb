class TestCli::API
  
  def fetch
   
     url ="https://pokeapi.co/api/v2/berry/"
     response = HTTParty.get(url)
     response["results"].each do |berry|
       name = berry["name"]
       link = berry["url"]
       puts name
    
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
      
         
     end
   
    
  