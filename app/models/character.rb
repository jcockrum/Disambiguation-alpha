class Character < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :approach, :efficacy, :name, :regard, :selfcontrol, :universe_id
end
