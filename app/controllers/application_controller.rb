class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
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
      cat_id: params[:cat_id]
    )

    job.to_json
  end

  get '/all' do
    jobs = Job.all
    jobs.to_json
  end

  # get '/last' do
  #   jobs = Job.last
  #   jobs.to_json
  # end

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
