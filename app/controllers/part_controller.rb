class PartController < ApplicationController
 	belongs_to :universe do
        belongs_to :location, :character, :polymorphic => true
    end
end
