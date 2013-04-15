class Branch < ActiveRecord::Base
    attr_accessible :name
    
    has_many :plotlines
    has_many :scenes, :through => :plotlines

#TODO: add default branches
#TODO: auto numbering for acts and chapters
end
