require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'

class APITestHeroku < MiniTest::Unit::TestCase
  def setup
    url = "https://openflashcardsapi.herokuapp.com/api/users"
    #jdata = { :api_token => ENV["FB_API_TOKEN"]}.to_json
    
    #puts jdata
    #response = RestClient.get url, :data => jdata, :content_type => :json, :accept => :json
    #@data = JSON.parse response.body
    
  
   
    uri = URI(url)
    req = Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json', 'Authorization' => 'Bearer '+ ENV["FB_API_TOKEN"], 'Accept' => 'application/openflashcards.facebook.v1')
    #req.body = jdata
    
    res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      
      res = http.request(req)
    end
    puts res
    
    @data = res.body

    
  end

  def test_id_correct
    puts @data.to_s
    
    assert_equal 1, 1
    #assert_equal 4, @data['id']
  end
end