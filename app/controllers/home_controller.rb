class HomeController < ApplicationController
    
    def index
        @treatments = Treatment.all.reorder("completed_at")
        @treatments_outstanding = Treatment.all.reorder("date_due_back")
        @orders = Order.all.reorder("completed_at")
        @orders_outstanding = Order.all.reorder("due_date")
    end
    
end
