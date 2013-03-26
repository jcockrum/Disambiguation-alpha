module UsersHelper

    def nicename(id)
        @user = User.find(params[:id])
        @user.name
    end

	
end