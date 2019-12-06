class TestCli::API
  def fetch
    
     url ="https://pokeapi.co/api/v2/berry/1/"
     response = HTTParty.get(url)
     binding.pry
     
  
  end
end