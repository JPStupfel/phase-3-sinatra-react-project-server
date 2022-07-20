require_relative '../../config/environment.rb'

class Defense < ActiveRecord::Base
    belongs_to :attack
    has_many :sequences

    def self.create args
        # include ActiveRecord::Base

        defense = self.new args
        defense.save
        
        Sequence.generate
     end
  


end

