class ApplicationController < ActionController::API

  def get_current_user
    id = decode_token
    Client.find_by(id: id)
  end

  def decode_token
    token = get_token
    begin
      data = JWT.decode(token, secret).first
      data['id']
    rescue
      nil
    end
  end

  def get_token
    # byebug
    request.headers['Authorization']
  end

  def issue_token(data)
    JWT.encode(data, secret)
  end

  def secret
    'shhh'
  end

end
