class Universe < ActiveRecord::Base
    attr_accessible :name, :user_id
    has_many :storyarcs
    has_many :parts, :as => :partible, :dependent => :destroy



end
