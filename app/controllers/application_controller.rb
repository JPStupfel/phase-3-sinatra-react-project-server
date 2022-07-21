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

    defense = Defense.create name: params['name'],
    result: params['result'],
    notes: params['notes'],
    attack_id: params['attack_id'],
    stage: params['stage']
    
    
    defense.to_json
  end


  patch "/defenses/:id" do
    defense = Defense.find(params[:id])
     params.keys.each do |t| 
      if defense[t] && t!= 'id'
        defense[t] = params[t]
        defense.save
      end
    end
    defense.to_json
  end 

  delete "/defenses/:id" do
    defense = Defense.find(params[:id])
    defense.destroy
    Sequence.generate

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
  




  get "/positions" do
    Position.all.to_json
  end

  get "/positions/:id" do
    Position.find(params[:id]) .to_json
  end 

  
  post "/positions" do
    position = Position.create name: params[:name], notes: params[:notes]
    position.to_json
  end

  patch "/positions/:id" do
    position = Position.find(params[:id])
     params.keys.each do |t| 
      if position[t] && t!= 'id'
        position[t] = params[t]
        puts position[t]
        position.save
      end
    end
    position.to_json
  end 

  delete "/positions/:id" do
    position = Position.find(params[:id])
    position.destroy
    position.to_json
  end 


  #Can get only those attacks associated with a particular position, thus reducing client burden
  get "/positions/:id/attacks" do
    position = Position.find(params[:id])
    attacks = position.attacks
    attacks.to_json
  end


  #Can get only those defenses associated with a particular attack, thus reducing client burden
  get "/attacks/:id/defenses" do
    attack = Attack.find(params[:id])
    defenses = attack.defense
    defenses.to_json

  end

  get "/sequences" do

    narratives = []
    #for each sequence, build a json object containing a narrative by finding each position, attack and defense using their join key in the sequence table.
    Sequence.all.each do |sequence|
      narrative = {narrative: "Beginning in #{Position.find(sequence.position_id).name} position, one attacks with the #{Attack.find(sequence.attack_id).name} and the other defends with the #{Defense.find(sequence.defense_id).name} defense"}
      #and add that narrative to the narratives array
      narratives.push narrative

    end
    #convert narratives array to json and return it!
  narratives.to_json


  end


  



end
