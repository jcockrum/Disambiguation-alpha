class Part < ActiveRecord::Base
    attr_accessible :content, :partible_id, :partible_type

    belongs_to :partible, :polymorphic => true

end

