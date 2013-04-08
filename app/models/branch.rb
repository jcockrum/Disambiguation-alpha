class Branch < ActiveRecord::Base
    attr_accessible :name, :scene_id
    
    has_many :plotlines
    has_many :scenes, :through => :plotlines

#TODO: add default branches
#TODO: auto numbering for acts and chapters
end
