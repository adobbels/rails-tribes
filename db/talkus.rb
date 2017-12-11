require 'net/http'
require 'uri'
require 'json'

def message_to_slack(message)
uri = URI.parse("https://app.talkus.io/api/visitor/message")
request = Net::HTTP::Post.new(uri)
request.basic_auth("4e4ef6a8d80e1d506af6d1919672d021", "")
request.content_type = "application/json"
request.body = JSON.dump({
  "text" => "#{message}"
})

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

puts response.code
puts response.body

end
puts message_to_slack('au revoir')
puts message_to_slack('restaurant ouvert')
# response.code
# response.body
