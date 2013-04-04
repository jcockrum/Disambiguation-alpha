class Scene < ActiveRecord::Base
  belongs_to :storyarc
  attr_accessible :act, :chapter, :name, :story_id
end
