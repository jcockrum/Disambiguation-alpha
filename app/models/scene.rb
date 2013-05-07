class Scene < ActiveRecord::Base
    
    attr_accessible :name, :branch,
                  :character_ids, :location_ids, :location_id, :locations
                  

    belongs_to :universe

    has_many :parts, :as => :partible, :dependent => :destroy

    has_many :npcs
    has_many :characters, :through => :npcs, :dependent => :destroy

    has_many :events
    has_many :locations, :through => :events, :dependent => :destroy

    has_many :storylines
    has_many :stories, :through => :storylines
end
