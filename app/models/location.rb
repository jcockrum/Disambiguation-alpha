class Location < ActiveRecord::Base
    attr_accessible :name

    belongs_to :scene

    has_many :parts, :as => :partible, :dependent => :destroy

end
