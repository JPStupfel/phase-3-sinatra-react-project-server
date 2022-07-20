require_relative '../../config/environment.rb'

class Defense < ActiveRecord::Base
    belongs_to :attack
    has_many :sequences

    def self.create_with_sequence args
        self.create args

        Sequence.all.each do |sequence|
            sequence.destroy
        end

        Sequence.generate
     end
  


end

# def self.create_with_sequence args
#     self.create args
#     sequence.create 
#  end