require_relative '../../config/environment.rb'

class Defense < ActiveRecord::Base
    belongs_to :attack
    has_many :sequences

    # redefining Defense.create to automatically call Sequence.generate
    def self.create args

        defense = self.new args
        defense.save
        Sequence.generate
        defense
     end
  

end

