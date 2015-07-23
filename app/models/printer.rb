class Printer < ActiveRecord::Base
    
    belongs_to :order
    has_many :parts
    
end
