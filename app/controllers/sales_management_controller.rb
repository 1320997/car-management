class SalesManagementController < ApplicationController
    def index
        selected_date = params[:selected_date] || Date.today
        @available_cars = Car.where('sales_start_date <= ?', selected_date)
    end
end
