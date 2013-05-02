class Character < ActiveRecord::Base
  attr_accessible :name, :universe, :scene_ids
  belongs_to :universe
  has_many :parts, :as => :partible, :dependent => :destroy
  
  has_many :npcs
  has_many :scenes, :through => :npcs
  
  scope :in_verse,   proc {|in_verse| where(:universe_id => in_verse) }
end
