class Storyline < ActiveRecord::Base
  attr_accessible :scene_id, :story_id
  
  belongs_to :story
  belongs_to :scene
  
end
