class Plotline < ActiveRecord::Base
    attr_accessible :branch_id, :scene_id
    belongs_to :scene
    belongs_to :branch

end
