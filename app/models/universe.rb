class Universe < ActiveRecord::Base
    attr_accessible :name, :user_id
    has_many :characters
    has_many :locations
    has_many :storyarcs

    #delegate :name, :to => @user, :prefix => true, :allow_nil => true

end
