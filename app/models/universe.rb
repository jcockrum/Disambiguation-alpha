class Universe < ActiveRecord::Base
  belongs_to :users
  attr_accessible :name, :users_id
end
