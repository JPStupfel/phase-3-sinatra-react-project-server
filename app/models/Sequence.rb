require_relative '../../config/environment.rb'

class Sequence < ActiveRecord::Base
    belongs_to :defense
    belongs_to :position
    belongs_to :attack

    def self.generate
        Position.all.each do |position| 
            position.attacks.each do |attack| 
                attack.defense.each do |defense|
                    self.create position_id: position.id, attack_id: attack.id, defense_id: defense.id
                end
            end  
        end
     end

end

#make sequence table, replace puts with Sequence.create, add sequence.create t seed file
