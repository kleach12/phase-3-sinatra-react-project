class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  enable :sessions
  # Add your routes here
  post '/users/signup' do 
    @user = User.create_with(password: params[:password]).find_or_create_by(username:params[:username])
    @user.to_json
    # session[:user_id] = @user.id
  end

  post '/login' do
    @user = User.find_by(username:params[:username], password: params[:password])
    if @user

      get '/users/home' do
        # @user = User.find(session[:user_id])
        @user.to_json
      end
      # session[:user_id] = @user.id
      # redirect '/users/home'
    end
    # redirect '/login'
    # @user.to_json
  end

  post '/user/job' do 
    job = Job.create(
      postion: params[:postion],
      company: params[:company],
      status: params[:status],
      applieddate: params[:applieddate],
      responsedate: params[:responsedate],
      notes: params[:notes],
      user_id: params[:user_id]
    )
    job.to_json
  end

  get '/users/home' do
    @user = User.find(session[:user_id])
    @user.to_json
  end

  get '/sessions/logout' do
    sessions.clear
  end

  get '/all' do
    @users = User.all
    @users.to_json
  end


end
