require_relative '../../config/environment.rb'

class Position < ActiveRecord::Base
    has_many :attacks
    has_many :sequences

    def self.create_with_sequence args
       self.create args
    end



end