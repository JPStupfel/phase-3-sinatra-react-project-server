require_relative '../../config/environment.rb'

class Attack < ActiveRecord::Base
    has_many :defense
    belongs_to :position
end