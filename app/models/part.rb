class Part < ActiveRecord::Base
    attr_accessible :content, :partible_id, :partible_type

    belongs_to :partible, :polymorphic => true
    
    def scene_parts
        @scene_parts ||= find_scenes
    end

    private

    def find_scenes
        scenes = scene.order(:name)
    end

end

