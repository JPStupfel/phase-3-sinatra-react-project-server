class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

 
  # get "/attacks/:id" do
  #   binding.pry
  #   Attack.find[params[:id]].to_json
  # end 

  get "/attacks" do
    Attack.all.to_json
  end
  
  post "/attacks" do
    attack = Attack.create name: params[:name], result: params[:result], notes: params[:notes]
    attack.to_json
  end



end
