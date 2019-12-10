class TestCli::CLI
  
  def call
    TestCli::API.new.fetch
  end
  
end