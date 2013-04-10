class Character < ActiveRecord::Base

    attr_accessible :approach, :efficacy, :name, :regard, :discipline, :universe_id
    belongs_to :universe
    has_many :parts, :as => :partible, :dependent => :destroy
    
    #TODO: add logic to make virture or vice pairs: eg Frugality or Debauchery
    #TODO: Fix the tenses
    
    def self.Willpower
        [   ['Temperance', 'Temperance'],
            ['Debauchery', 'Debauchery'],
            ['Frugality', 'Frugality'],
            ['Excess', 'Excess'],
            ['Contentment', 'Contentment'],
            ['Resentment', 'Resentment'],
            ['Continence', 'Continence'],
            ['Extravagance', 'Extravagance'],
            ['Determination', 'Determination'],
            ['Indecisive', 'Indecisive'],
            ['Integrity', 'Integrity'],
            ['Corruption','Corruption']
        ]
    end

    def self.Manner
        [
            ['Initiative', 'Initiative'],
            ['Lethargically', 'Lethargically'],
            ['Contemplative', 'Contemplative'],
            ['Neglectfull', 'Neglectfull'],
            ['Resourceful', 'Resourceful'],
            ['Awkward', 'Awkward'],
            ['Creative', 'Creative'],
            ['Uninspired', 'Uninspired'],
            ['Perseverance', 'Perseverance'],
            ['Inconstant', 'Inconstant'],
            ['Straightforward', 'Straightforward'],
            ['Devious', 'Devious'],
            ['Serene', 'Serene'],
            ['Obsessive', 'Obsessive']
        ]
    end

    def self.Power
        [
            ['Courage','Courage'],
            ['Cowardice','Cowardice'],
            ['Patience','Patience'],
            ['Intolerance','Intolerance'],
            ['Humility','Humility'],
            ['Arrogance','Arrogance']
        ]
    end

    def self.Shown
        [
            ['Gratitude','Gratitude'],
            ['Disregard','Disregard'],
            ['Impartial','Impartial'],
            ['Biased','Biased'],
            ['Tolerance','Tolerance'],
            ['Prejudice','Prejudice'],
            ['Honest','Honest'],
            ['Treacherous','Treacherous']
        ]
    end

end
