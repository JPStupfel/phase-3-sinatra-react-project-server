require_relative '../../config/environment.rb'

class Position < ActiveRecord::Base
    has_many :attacks
    has_many :sequences

  



end