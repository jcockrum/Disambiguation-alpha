class Story < ActiveRecord::Base
  attr_accessible :name, :chapter, :scene_ids
  belongs_to :universe

  has_many :storylines
  has_many :scenes, :through => :storylines
  
end
