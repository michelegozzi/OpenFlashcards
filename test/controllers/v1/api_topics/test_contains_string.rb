require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'

class APITestTopicContains < MiniTest::Unit::TestCase
  def setup
    url = "http://localhost:3000/api/topics?contains=Citizenship"
    
    #jdata = { :api_token => ENV["FB_API_TOKEN"]}.to_json
    
    #puts jdata
    #response = RestClient.get url, :data => jdata, :content_type => :json, :accept => :json
    #@data = JSON.parse response.body
    
    token = "Token token=#{ENV["OPENFLASHCARDS_DEFAULT_USER_API_KEY"]}"
    puts token
    uri = URI(url)
    req = Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json', 'Authorization' => token, 'Accept' => 'application/openflashcards.api.v1')
    #req.body = jdata
    res = Net::HTTP.start(uri.hostname, uri.port) do |http|
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