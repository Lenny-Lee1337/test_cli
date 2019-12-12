class TestCli::API
  
  def fetch
   
     url ="https://pokeapi.co/api/v2/berry/"
     response = HTTParty.get(url)
     response["results"].each do |berry|
       name = berry["name"]
       link = berry["url"]
       TestCli::Berries.new(name, link)
    
  
    end
  end
      
         
     end
   
    
  