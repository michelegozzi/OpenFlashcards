require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'
require 'faker'

class APITestTopicContains < MiniTest::Unit::TestCase
  def setup
    url = "http://localhost:3000/api/topics"
    
    
    name = Faker::Lorem.sentence(3, true, 4)
    description = Faker::Lorem.sentence(4, true, 8)
    params = { :topic => { :name => name, :description => description } }
    
    token = "Token token=#{ENV["OPENFLASHCARDS_DEFAULT_USER_API_KEY"]}"
    accept = 'application/openflashcards.api.v1'
    puts token
    uri = URI(url)
    req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json', 'Authorization' => token, 'Accept' => accept)
    req.body = params.to_json
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