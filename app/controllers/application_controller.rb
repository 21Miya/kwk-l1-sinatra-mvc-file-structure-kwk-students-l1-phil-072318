class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :homebase
  end
  
  get "/selfcarequiz" do
    erb :selfcarequiz
  end 
  
  post '/selfcarequizresults' do
    "You need #{params[:age]} hours of sleep each night and around #{params[water]} of water per day."
  end 
  
  get '/peaceofmind'do
    erb :peaceofmind
  end
  
  get '/physicalhealth'do
    erb :physicalhealth
  end
  
  get '/areyouvalid'do
    erb :areyouvalid
  end
  
  get '/contactus'do
    erb :contactus
  end
  
  get '/homebase'do
    erb :homebase
  end
  
  get '/metime'do
    erb :metime
  end
  
   post '/areyouvalidresults' do
	"#{params[:name]}, you're #{params[:gender]}, #{params[:race]}, and #{params[:sexuality]}. But you're also incredibly #{params[:trait]}--and 100% valid!"
  end
  
end
