class Part < ActiveRecord::Base
    attr_accessible :author_id, :content, :partible_id, :partible_type

    belongs_to :partible, :polymorphic => true

end
