class Society < ActiveRecord::Base
  belongs_to :event
  attr_accessible :name, :event_id, :religion, :social, :source, :structure
end
