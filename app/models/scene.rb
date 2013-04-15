class Scene < ActiveRecord::Base
    attr_accessible :name, :location, :act, :chapter
  	belongs_to :story
  	
    has_many :plotlines, :dependent => :destroy
    has_many :branches, :through => :plotlines
    
    has_many :characters
    has_many :locations
    
    has_many :parts, :as => :partible, :dependent => :destroy
    
    has_one :society
#TODO: Autonumbering for acts, chapters(first record)

end
