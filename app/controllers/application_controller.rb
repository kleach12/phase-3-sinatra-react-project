class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  require 'pry'
  # Add your routes here

  post '/signin' do 
    user = User.where(username: params[:userName], password: params[:password])
    user.to_json
  end

  post '/createUser' do 
    user = User.exists?(username: params[:userName])
    if !user
      newUser = User.create(
        username: params[:userName],
        password: params[:password]
      )
      
    end

    newUser.to_json
  end

  post '/job' do  
    job = Job.create( 
      position: params[:position],
      company: params[:company],
      status: params[:status],
      cat: params[:cat],
      applieddate: params[:applieddate],
      responsedate: params[:responsedate],
      notes: params[:notes],
      user_id: params[:user_id],
      category_id: Category.find_by(cat:params[:cat]).id
    )

    job.to_json
  end

  get '/user/jobs/:id' do 
    user = User.find(params[:id])
    jobs = user.jobs.all
    jobs.to_json
  end

  delete '/delete/:id' do 
    job = Job.find(params[:id])
    job.destroy
    job.to_json
  end

  patch '/edit/:id' do
    job = Job.find(params[:id])
    job.update(
      position: params[:position],
      company: params[:company],
      cat: params[:cat],
      status: params[:status],
      applieddate: params[:applieddate],
      responsedate: params[:responsedate],
      notes:params[:notes]
    )
    job.to_json
  end

end
