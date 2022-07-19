require_relative '../../config/environment.rb'

class Sequence < ActiveRecord::Base
    belongs_to :defense
    belongs_to :position
    belongs_to :attack

    def self.generate
        Position.all.each do |position| 
            position.attacks.each do |attack| 
                attack.defense.each do |defense|
                    puts 'position attack defense'
                end
            end  
        end
     end

end