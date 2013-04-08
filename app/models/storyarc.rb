class Storyarc < ActiveRecord::Base
  attr_accessible :name, :universe_id
  belongs_to :universe
  has_many :stories

end
