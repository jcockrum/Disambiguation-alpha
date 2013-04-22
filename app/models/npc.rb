class Npc < ActiveRecord::Base
  attr_accessible :character_id, :scene_id
    
  belongs_to :character
  belongs_to :scene
  
end
