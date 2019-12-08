class TestCli::API
  
  def fetch
    puts "Which berry?"
     url ="https://pokeapi.co/api/v2/berry/"
     response = HTTParty.get(url)
     response["results"].each do |berry|
       name = berry["name"]
       link = berry["url"]
       puts name
       puts link
       
       #TestCLI::Berries.new(name, link)
       
         
     end
     
  
  end
end