class Physic < ActiveRecord::Base
  belongs_to :event
  attr_accessible :energy, :event_id, :force, :position, :size, :weight
  
  #TODO: evaluate necessity / presentation of this model
end
