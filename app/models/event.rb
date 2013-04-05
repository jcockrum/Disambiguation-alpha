class Event < ActiveRecord::Base
    belongs_to :location
    has_many :societies
    attr_accessible :location_id, :name
end
