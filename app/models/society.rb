class Society < ActiveRecord::Base
  belongs_to :event
  attr_accessible :name, :social_material, :social_interaction, :economics, :event_id
  
  
  def self.econ
	[['Market',  1], ['Mixed',  2], ['Planned',  3], ['Participatory',  4], ['Gift',  5], ['Barter',  6]]
  end
  def self.s_material
  	[['employment',  1], ['income',  2], ['health',  3], ['education',  4], ['housing',  5]]
  end
  def self.s_interaction
  	[['Hunting-and-Gathering',  1], ['Horticultural',  2], ['Agrarian',  3], ['Industrial',  4], ['Postindustrial',  5], ['Postmodern',  6]]	
  end


  


  
  
  
end
