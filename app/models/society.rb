class Society < ActiveRecord::Base
  attr_accessible :name, :social_material, :social_interaction, :economics, :scene_id
  belongs_to :scene  
  
  def self.EconTypes
	[['Barter',  'Barter'], ['Market', 'Market'], ['Planned', 'Planned'], 
	['Mixed', 'Mixed'], ['Participatory', 'Participatory'], ['Gift', 'Gift']]
  end
  def self.S_material
  	[['employment', 'employment'], ['income','income'], ['health','health'], 
  	['education','education'], ['housing','housing']]
  end
  def self.S_interaction
  	[['Hunting-and-Gathering', 'Hunting-and-Gathering'], ['Horticultural','Horticultural'], 
  	['Agrarian', 'Agrarian'], ['Industrial','Industrial'], 
  	['Postindustrial','Postindustrial'], ['Postmodern', 'Postmodern']]	
  end

#TODO: add values, political, and religion (may require tables)
#TODO: change s_material to be catagory headings
end
