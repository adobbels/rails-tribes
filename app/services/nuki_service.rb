require 'rest-client'


class NukiLock

  BASE_URL = 'http://10.10.105.21:8080/'
  def initialize
    @nuki_id = '216634041' # TODO ENV[]
    @token = 'hP1S5i' # TODO ENV[]
  end


  def open
    RestClient.get(BASE_URL + "/lockaction?nukiId=#{@nuki_id}&Action=1&token=#{@token}" , headers={})
  end

  def close
    RestClient.get(BASE_URL + "/lockaction?nukiId=#{@nuki_id}&Action=2&token=#{@token}" , headers={})
  end
end


