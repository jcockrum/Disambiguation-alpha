class Story < ActiveRecord::Base
  attr_accessible :name
  belongs_to :storyarc
  has_many :scenes
  has_many :locations, :through => :scenes
  has_many :characters, :through => :scenes

end
