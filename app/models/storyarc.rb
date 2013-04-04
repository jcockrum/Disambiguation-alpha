class Storyarc < ActiveRecord::Base
  belongs_to :universe
  has_many :scenes
  attr_accessible :name, :universe_id
end
