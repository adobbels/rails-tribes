require 'rest-client'


class NukiLock


  def initialize(nuki_id, token, url)
    @nuki_id = nuki_id
    @token = token
    @base_url = url
  end


  def open
    RestClient.get(@base_url + "/lockaction?nukiId=#{@nuki_id}&Action=1&token=#{@token}" , headers={})
  end

  def close
    RestClient.get(@base_url + "/lockaction?nukiId=#{@nuki_id}&Action=2&token=#{@token}" , headers={})
  end
end


