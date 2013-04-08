class SocietiesController < InheritedResources::Base
	respond_to :html, :json
	
     def index
        @scene = Scene.find(params[:scene_id])
        @societies = @scene.societies
    end

    def new
		@scene = Scene.find(params[:scene_id])
		@society = @scene.society.build
    end

    def create
        @scene = Scene.find(params[:scene_id])
	    @society = @scene.societies.build(params[:society])
	    if @society.save
	      flash[:notice] = "Successfully created society."
	      redirect_to scene_societies_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @society = Society.find params[:id]
        respond_to do |format|
            if @society.update_attributes(params[:society])
                format.html { redirect_to(scene_societies_url, :notice => 'society was successfully updated.') }
                format.json { respond_with_bip(@society) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@society) }
            end
        end
   end

    def destroy
	    @society = Society.find(params[:id])
	    @society.destroy
	    flash[:notice] = "Successfully destroyed society."
	    redirect_to :back
	end
end
