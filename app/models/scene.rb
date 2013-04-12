class Scene < ActiveRecord::Base
    attr_accessible :act, :chapter, :name,:story_id,:story
  	belongs_to :story
  	
    has_many :plotlines
    has_many :branches, :through => :plotlines
    has_many :parts, :as => :partible, :dependent => :destroy
    
    has_one :society
#TODO: Autonumbering for acts, chapters(first record)

end
