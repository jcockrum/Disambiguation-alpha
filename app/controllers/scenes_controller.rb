class ScenesController < InheritedResources::Base
    respond_to :html, :json
    belongs_to :universe
    
    def show
        @scene = Scene.find params[:id]
        @partible = @scene
        @parts = @partible.parts
        @part = Part.new
    end

    def edit
        @scene = Scene.find params[:id]
        @partible = @scene
        @parts = @partible.parts
        @part = Part.new
    end

    def update
        @scene = Scene.find(params[:id])
        respond_to do |format|
            if @scene.update_attributes(params[:scene])
                format.html { redirect_to(@scene, :notice => 'scene was successfully updated.') }
                format.json { respond_with_bip(@scene) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@scene) }
            end
        end
    end

    def destroy
        @scene = Scene.find params[:id]
        @scene.destroy
        flash[:notice] = "Successfully destroyed scene."
        redirect_to :back
    end

end
