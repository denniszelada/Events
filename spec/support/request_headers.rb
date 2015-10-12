module RequestHeaders
  def set_headers(device_token)
    {
      'tb-device-token' => device_token,
      'Content-type' => 'application/json'
    }
  end
end

RSpec.configure do |config|
  config.include RequestHeaders
end
