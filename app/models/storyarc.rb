class Storyarc < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :name, :universe_id
end
