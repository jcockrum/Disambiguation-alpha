class Branch < ActiveRecord::Base
  has_and_belongs_to_many :scenes
  attr_accessible :name, :scene_id
end
