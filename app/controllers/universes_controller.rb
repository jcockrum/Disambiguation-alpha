class UniversesController < InheritedResources::Base
  

  def create
    @universe = Universe.new(params[:universe])
    @universe.users_id = current_user.id
    create!
  end



end
