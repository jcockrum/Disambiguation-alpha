class Character < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :name
end
