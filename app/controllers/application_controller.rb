class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  enable :sessions
  # Add your routes here
  post '/users' do 
    user = User.create_with(password: params[:password]).find_or_create_by(username:params[:username])
    user.to_json
    session[:user_id] = user.id
  end

  post '/sessions' do
    user = User.find_by(username:params[username], password: params[password])
    if user
      session[:user_id] = user.id
      redirect '/users/home'
    end
    redirect '/sessions'
  end

  get '/users/home' do
    user = User.find(session[:user_id])
  end

  get '/sessions/logout' do
    sessions.clear
  end


end
