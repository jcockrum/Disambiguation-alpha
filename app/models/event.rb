class Event < ActiveRecord::Base
    belongs_to :location
    has_many :societies
    has_many :physics
    attr_accessible :location_id, :name
end
