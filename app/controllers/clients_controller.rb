class ClientsController < ApplicationController
  def signin
    # puts "username: #{params[:username]}"
    # puts "password: #{params[:password]}"
    client = Client.find_by(username: params[:username])
    if client && client.authenticate(params[:password])
      # could we use Serializer to only display the id?
      # render json: {id: client.id}
      render json: {token: issue_token({id: client.id})}
    else
      render json: {error: "User/password combination failed"}, status: 400
  end
end

def validate
  #this is getting the id from the front-end and use it to allow the user to get it
  #front-end and back-end use "request.headers['Authorization']" to communicate with each other.
  #Through the above metadata you can pass the id from the front-end to the back-end
  client = get_current_user
  # byebug
  if client
    render json: { username: client.username}
  else
    render json: {error: "Invalid user"}, status: 404
  end
end


  def show
    client = Client.find_by(id: params[:id])
    if client
      render json: client
    else
      render json: {error: "user not found"}, status: 404
    end
  end

  def dashboard
    client = get_current_user
    if client
      render json: client.appointments
    else
      render json: {error: "Invalid user"}, status: 404
    end
  end
end
