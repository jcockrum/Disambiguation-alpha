class Scene < ActiveRecord::Base
  belongs_to :storyarc
  has_and_belongs_to_many :branches
  attr_accessible :act, :chapter, :name,:story, :storyarc_id
end
