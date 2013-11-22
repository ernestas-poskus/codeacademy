# Tokens up close

# Its 40 character string value is key we pass in header when making OAuth-enabled API calls. 
# We're displaying these tokens for our dummy user for educational purposes but you should treat your real life tokens created with your own username 
# and password like you would any password, securely and away from prying eyes.

{
	"id"=>1650019, 
	"url"=>"https://api.github.com/authorizations/1650019", 
	"app"=> {
		"name"=>"GitHub API", 
		"url"=>"http://developer.github.com/v3/oauth/#oauth-authorizations-api"
	}, 
	"token"=>"c8196abdbdcf0e87fcd065d1e07cb2be7ecd682c", 
	"note"=>nil, 
	"note_url"=>nil, 
	"created_at"=>"2013-02-17T00:45:46Z", 
	"updated_at"=>"2013-02-17T00:45:46Z", 
	"scopes"=> []
}





# Creating tokens for an application


require 'httparty'
require 'json'

class GitHub
  API_CLIENT_ID     = '34a57b3c1f20e85a56ab'
  API_CLIENT_SECRET = '89060fce512d1042d168c3e71504ae35208cef1b'
  
  include HTTParty
  headers "User-Agent" => "codecademy"
  basic_auth "api-padawan", "GitHubPassw0rd"

  def create_token
    endpoint = "https://api.github.com/authorizations"
    post_body = {
      :client_id => API_CLIENT_ID,
      :client_secret => API_CLIENT_SECRET
    }
    self.class.post endpoint, :body => post_body.to_json
  end
end

client = GitHub.new
response = client.create_token

puts response.parsed_response