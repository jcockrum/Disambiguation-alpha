class Universe < ActiveRecord::Base
    attr_accessible :name, :user_id
    

    #delegate :name, :to => @user, :prefix => true, :allow_nil => true

end
