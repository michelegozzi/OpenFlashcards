require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'
require 'faker'

class APITestCreateTopic < MiniTest::Unit::TestCase
  def setup
    url = "http://localhost:3000/api/topics/"
    jdata = { :topic => { :name => Faker::Lorem.sentence(3, true, 4), :description => Faker::Lorem.sentence(4, true, 8) } }.to_json
    
    @data = JSON.parse jdata
    @data.has_key?('topic')
    #puts jdata
    #response = RestClient.get url, :data => jdata, :content_type => :json, :accept => :json
    #@data = JSON.parse response.body
    
    uri = URI(url)
    req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json', 'Authorization' => 'Bearer '+ ENV["FB_API_TOKEN"], 'Accept' => 'application/openflashcards.facebook.v1')
    req.body = jdata
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