class TestCli::API
  
  def fetch
   
     url ="https://pokeapi.co/api/v2/berry/"
     response = HTTParty.get(url)
     response["results"].each do |berry|
       name = berry["name"]
       link = berry["url"]
       
      fetch_details(name, link)
    
  
    end
  end
  
  def fetch_details(name, link)
     response = HTTParty.get(link)
     binding.pry
     response["results"].each do |berry|
       
       name = berry["name"]
       link = berry["url"]
       TestCli::Berries.new(name, link)
    end
  end
  
end