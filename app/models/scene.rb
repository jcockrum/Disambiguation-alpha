class Scene < ActiveRecord::Base
    attr_accessible :name, :act, :chapter, :story_id,:story
  	belongs_to :story
  	
    has_many :plotlines, :dependent => :destroy
    has_many :branches, :through => :plotlines
    
    has_many :events, :dependent => :destroy
    has_many :locations, :through => :events 
    
    has_many :npcs, :dependent => :destroy
    has_many :characters, :through => :npcs
    
    
    has_many :parts, :as => :partible, :dependent => :destroy
    
    has_one :society
#TODO: Autonumbering for acts, chapters(first record)

end
