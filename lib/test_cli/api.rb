class TestCli::API
  
  def fetch
   
     url ="https://pokeapi.co/api/v2/berry/"
     response = HTTParty.get(url)
     response["results"].each do |berry|
       name = berry["name"]
       link = berry["url"]
     
       TestCli::Berries.new(name, link)
       #fetch_details(name, link)
    
   end
   
  end
  
  
  def self.fetch_details(berri)
    
    response = HTTParty.get(berri.link)
    berri.firmness = response["firmness"]["name"]
    berri.growth_time = response["growth_time"]
    berri.max_harvest = response["max_harvest"]
    
      
    end
  end
