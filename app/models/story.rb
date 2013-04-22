class Story < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :chapter, :name
end
