class Location < ActiveRecord::Base
  attr_accessible :name, :universe_id
  
  belongs_to :universe
  has_many :scenes
  has_many :parts, :as => :partible
  
  
end
