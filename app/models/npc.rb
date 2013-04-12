class Npc < ActiveRecord::Base
  attr_accessible :character_id, :scene_id
  belongs_to :scene
  belongs_to :character
  
end
