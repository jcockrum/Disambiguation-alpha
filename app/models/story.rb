class Story < ActiveRecord::Base
  belongs_to :storyarc
  attr_accessible :name, :storyarc_id
  
  
  
  
end
