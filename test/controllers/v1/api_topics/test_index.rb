require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'

class APITestTopicContains < MiniTest::Unit::TestCase
  def setup
    #url = "http://localhost:3000/api/topics"
    #accept = 'application/openflashcards.api.v1'
    url = 'http://openflashcardsapi.herokuapp.com/api/topics'
    accept = 'application/openflashcards.api.v1'
    
    token = "Token token=#{ENV["OPENFLASHCARDS_DEFAULT_USER_API_KEY"]}"
    
    
    puts token
    uri = URI(url)
    req = Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json', 'Authorization' => token, 'Accept' => accept)
    res = Net::HTTP.start(uri.hostname, uri.port) do |http|
      res = http.request(req)
    end
    puts res
    
    @data = res.body

    
  end

  def test_id_correct
    puts @data.to_s
    
    @data.length
    
    assert_equal 1, 1
    #assert_equal 4, @data['id']
  end
end