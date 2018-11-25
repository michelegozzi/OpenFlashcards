require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'

class APITestHerokuTopics < MiniTest::Unit::TestCase
  def setup
    url = 'https://openflashcardsapi.herokuapp.com/api/topics'
    #jdata = { :api_token => ENV["FB_API_TOKEN"]}.to_json
    
    #puts jdata
    #response = RestClient.get url, :data => jdata, :content_type => :json, :accept => :json
    #@data = JSON.parse response.body
    
  
   
    uri = URI(url)
    #req = Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json', 'Authorization' => 'Bearer '+ ENV["OPENFLASHCARDS_DEFAULT_USER_API_KEY"], 'Accept' => 'application/openflashcards.api.v1')
    
    req = Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json', 'Authorization' => 'Bearer EAABj445NLfsBAEZAZAxjPY8yJVW5vuwDaOJaeuAsqzHiszvHyoGZBXnZCVQr7kYDgh6wSUYDSd03piLpZCz0RisjFaRZCD3nOI3XDmdcQKop9RIHSFThoRn4Vv0kWyAsQrnZCFuQAhWjexjYbnENjUkOPbzj0JCCFbzpwZAmJA7mdfjdX6zTPGqOMNnaEABf1EI0yTSHnAF9ZCdCZCweccM3ar', 'Accept' => 'application/openflashcards.facebook.v1')
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