class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

 


  get "/defenses" do
    Defense.all.to_json
  end

  get "/defenses/:id" do
    Defense.find(params[:id]) .to_json
  end 

  
  post "/defenses" do
    defense = Defense.create name: params[:name], result: params[:result], notes: params[:notes]
    defense.to_json
  end

  patch "/defenses/:id" do
    defense = Defense.find(params[:id])
     params.keys.each do |t| 
      if defense[t] && t!= 'id'
        defense[t] = params[t]
        puts defense[t]
        defense.save
      end
    end
    defense.to_json
  end 

  delete "/defenses/:id" do
    defense = Defense.find(params[:id])
    defense.destroy
    defense.to_json
  end 
  



  get "/attacks" do
    Attack.all.to_json
  end

  get "/attacks/:id" do
    Attack.find(params[:id]) .to_json
  end 

  
  post "/attacks" do
    attack = Attack.create name: params[:name], result: params[:result], notes: params[:notes]
    attack.to_json
  end

  patch "/attacks/:id" do
    attack = Attack.find(params[:id])
     params.keys.each do |t| 
      if attack[t] && t!= 'id'
        attack[t] = params[t]
        puts attack[t]
        attack.save
      end
    end
    attack.to_json
  end 

  delete "/attacks/:id" do
    attack = Attack.find(params[:id])
    attack.destroy
    attack.to_json
  end 
  




  



end
