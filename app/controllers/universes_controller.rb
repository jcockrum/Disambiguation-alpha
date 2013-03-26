class UniversesController < InheritedResources::Base
    respond_to :html, :json
    before_filter :load_sidestack
    
    actions :index, :show, :new, :delete

    def create
        @universe = Universe.new(params[:universe])
        @universe.user_id = current_user.id
        if @universe.save
            redirect_to :back, :notice => "Successfully created universe."
        else
            render :new
        end
    end

    def update
        @universe = Universe.find(params[:id])
        respond_to do |format|
            if @universe.update_attributes(params[:universe])
                format.html { redirect_to(@universe, :notice => 'universe was successfully updated.') }
                format.json { respond_with_bip(@universe) }
            else
                format.html { render :action => "edit" }
                format.json { respond_with_bip(@universe) }
            end
        end
    end

    private

    def load_sidestack
        @users = User.all
        @characters = Character.all
    end
end
