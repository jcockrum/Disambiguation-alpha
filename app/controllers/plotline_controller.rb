class PlotlineController < ApplicationController
    def create
        @plotline = Scene.plotlines.build(:branch_id => params[:branch_id])
        if @plotline.save
            flash[:notice] = "Added branch."
            redirect_to story_scenes_url
        else
            flash[:notice] = "Unable to add branch."
            redirect_to story_scenes_url
        end
    end

    def destroy
        @plotline = Scene.plotlines.find(params[:id])
        @plotline.destroy
        flash[:notice] = "Removed friendship."
        redirect_to story_scenes_url
    end

end
