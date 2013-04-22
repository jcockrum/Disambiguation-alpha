module UniversesHelper
  def current_universe
    @current_universe ||= session[:universe_id]
  end
  
  def current_universe=(universe)
    @current_universe = universe
  end
	
end
