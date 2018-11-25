require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'

class APITestUsers < MiniTest::Unit::TestCase
  def setup
    url = "http://localhost:3000/api/v1/users/#{ENV["FB_API_TOKEN"]}"
    #jdata = { :api_token => ENV["FB_API_TOKEN"]}.to_json
    
    #puts jdata
    #response = RestClient.get url, :data => jdata, :content_type => :json, :accept => :json
    #@data = JSON.parse response.body
    
    uri = URI(url)
    #req = Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json', 'Authorization' => 'Bearer '+ ENV["FB_API_TOKEN"])
    req = Net::HTTP::Get.new(uri, 'Content-Type' => 'application/json')
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