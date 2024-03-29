class Universe < ActiveRecord::Base
  attr_accessible :name, :user_id
  
  has_many :scenes
  has_many :stories
  has_many :locations
  has_many :characters
  has_many :parts, :as => :partible, :dependent => :destroy
end
