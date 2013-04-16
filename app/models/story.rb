class Story < ActiveRecord::Base
  attr_accessible :name
  belongs_to :storyarc
  has_many :scenes
  has_many :locations, :through => :scenes
  has_many :characters, :through => :scenes

#TODO: good canadate for  accepts_nested_attributes_for method

end
