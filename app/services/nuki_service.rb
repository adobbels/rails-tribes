require 'rest-client'


class NukiLock


  def initialize(nuki_id, token, url)
    @nuki_id = nuki_id
    @token = token
    @base_url = url
  end

  def open
    begin
      RestClient.post("https://api.nuki.io/smartlock/#{@nuki_id}/action", JSON.generate({"action" => 1}), {content_type: "application/json", accept: "application/json", authorization: "Bearer 125148b0cf2291a5dd60994d296d5cb5aaec3ad49798aaa5b2a7ee79f9510384ca94f5b8bbe47d83"})
    rescue => error
      p error
    end
  end

  def close
    begin
      RestClient.post("https://api.nuki.io/smartlock/#{@nuki_id}/action", JSON.generate({"action" => 2}), {content_type: "application/json", accept: "application/json", authorization: "Bearer 125148b0cf2291a5dd60994d296d5cb5aaec3ad49798aaa5b2a7ee79f9510384ca94f5b8bbe47d83"})

    rescue => error
      p error
    end
  end
end


# "f7f100c69298598fa4521144f242b2778b0ac2e04a1b9e429fdb18591109a1169640f2e06ff6d5d2"

# https://api.nuki.io/smartlock/216634041/action
# RestClient.post 'http://example.com/resource', {param1: 'one'
