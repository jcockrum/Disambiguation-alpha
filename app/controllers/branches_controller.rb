class BranchesController < InheritedResources::Base
	respond_to :html, :json

#TODO: add logic for default branches

     def index
        @scene = Scene.find(params[:scene_id])
        @branches = @scene.branches
    end

    def new
		@scene = Scene.find(params[:scene_id])
		@branch = @scene.branch.build
    end

    def create
        @scene = Scene.find(params[:scene_id])
	    @branch = @scene.branches.build(params[:branch])
	    if @branch.save
	      flash[:notice] = "Successfully created branch."
	      redirect_to scene_branches_url
	    else
	      render :action => 'new'
	    end
    end

    def update
        @branch = Branch.find params[:id]
        respond_to do |format|
            if @branch.update_attributes(params[:branch])
                format.html { redirect_to(scene_branches_url , :notice => 'branch was successfully updated.') }
                format.json { respond_with_bip(@branch) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@branch) }
            end
        end
   end

    def destroy
	    @branch = Branch.find(params[:id])
	    @branch.destroy
	    flash[:notice] = "Successfully destroyed branch."
	    redirect_to :back
	end

end