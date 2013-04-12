class Event < ActiveRecord::Base
  attr_accessible :location_id, :scene_id
  belongs_to :scene 
  belongs_to :location
  
end
