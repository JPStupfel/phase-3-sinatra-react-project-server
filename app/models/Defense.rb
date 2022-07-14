require_relative '../../config/environment.rb'

class Defense < ActiveRecord::Base
    belongs_to :attack
end