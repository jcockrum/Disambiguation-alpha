class Universe < ActiveRecord::Base
  attr_accessible :name, :user_id
  
  has_many :scenes
  has_many :stories
  has_many :locations
  has_many :characters
  has_many :parts, :as => :partible, :dependent => :destroy
  
    scope :recent_universes, limit(10)
    scope :author,   proc {|author| where(:user_id => author) }
  
  
end
