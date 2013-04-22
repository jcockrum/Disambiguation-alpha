class Event < ActiveRecord::Base
  attr_accessible :location_id, :scene_id
  
  belongs_to :location
  belongs_to :scene
  
end
