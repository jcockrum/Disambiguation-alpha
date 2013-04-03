class Location < ActiveRecord::Base
  belongs_to :universe
  has_many :events
  attr_accessible :name, :universe_id
end
