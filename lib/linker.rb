require 'rubygems'
require 'linkedin'

class Linker
  APIKEY   = 'Zdgl3yO3C4DKWY5ZZrvh88_a_lkRJS074PlvMt6zLBF7K-jCZl8kh455Il-KxcBT'
  SECRET   = '4JuCOwoK4jZSsW4sK5Db788I-ZQSD8smfnAYzYIghStQmYTVc9dvfjD05QrB_mvl'
  LI_URL   = 'https://api.linkedin.com'
  RT_PATH  = '/uas/oauth/requestToken'
  ACT_PATH = '/uas/oauth/accessToken'
  AUT_PATH = '/uas/oauth/authorize'
  CALLBACK = 'http://www.folioconnect.com/oauth_callback'
  
  attr_reader :client
  
  def initialize
    @client = LinkedIn::Client.new(APIKEY, SECRET)
    @rtoken = @client.request_token.token
    @rsecret = @client.request_token.secret
    @client.set_callback_url(CALLBACK)
  end
  
  def client
    @client
  end
  
  def auth_user(verifier)
    @client.authorize_from_request(@rtoken, @rsecret, verifier)
  end
  
  def connection_ids
    @client.connections.map {|c| c.id}
  end
    
  
end