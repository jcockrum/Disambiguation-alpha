class Story < ActiveRecord::Base
  belongs_to :storyarc
  has_many :scenes
  attr_accessible :name, :storyarc_id
end
