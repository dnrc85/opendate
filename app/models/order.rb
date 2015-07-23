class Order < ActiveRecord::Base
    
    has_many :parts, dependent: :destroy
    has_many :printers
    
end
