class Storyarc < ActiveRecord::Base
  attr_accessible :name
  belongs_to :universe
  has_many :stories
  has_many :scenes, :through => :stories
  has_many :story_locations, :through => :stories, :source => :scenes
  has_many :characters, :through => :scenes, :source => :story
  has_many :parts, :as => :partible, :dependent => :destroy

end
