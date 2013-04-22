class Part < ActiveRecord::Base
  attr_accessible :content, :partible_id, :partible_type
end
