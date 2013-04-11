class Universe < ActiveRecord::Base
    attr_accessible :name, :user_id
    has_many :characters
    has_many :locations
    has_many :storyarcs
    has_many :parts, :as => :partible, :dependent => :destroy
end
