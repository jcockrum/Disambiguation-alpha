class Story < ActiveRecord::Base
  attr_accessible :name, :storyarc_id
  belongs_to :storyarc
  has_many :scenes

end
