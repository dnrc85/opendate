class HomeController < ApplicationController
    
    def index
        @treatments = Treatment.all.reorder("completed_at")
        @treatments_outstanding = Treatment.all.reorder("date_due_back")
        @orders = Order.all.reorder("completed_at")
        @orders_outstanding = Order.where(completed_at: nil).where.not(due_date: nil).order("due_date")
    end
    
end
