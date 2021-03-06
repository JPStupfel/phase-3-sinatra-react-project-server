require_relative '../../config/environment.rb'

class Sequence < ActiveRecord::Base
    belongs_to :defense
    belongs_to :position
    belongs_to :attack

    def self.generate
        # Repopulates Sequence table with all possible sequences
        Sequence.all.each do |sequence|
            sequence.destroy
        end


        Position.all.each do |position| 
            position.attacks.each do |attack| 
                attack.defense.each do |defense|
                    self.create position_id: position.id, attack_id: attack.id, defense_id: defense.id
                end
            end  
        end
        # Sequence.all

     end


end
