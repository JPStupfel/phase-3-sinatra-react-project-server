require_relative '../../config/environment.rb'

class Attack < ActiveRecord::Base
    has_many :defense
    has_many :sequences
    belongs_to :position
end