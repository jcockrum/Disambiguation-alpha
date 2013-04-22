class Scene < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :branch, :name
end
