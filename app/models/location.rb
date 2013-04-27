class Location < ActiveRecord::Base
  attr_accessible :name, :scene_ids
  belongs_to :universe
  has_many :parts, :as => :partible, :dependent => :destroy
 
 scope :in_verse, where(:universe_id => :universe_id)
  
  has_many :events
  has_many :scenes, :through => :events
  
end
