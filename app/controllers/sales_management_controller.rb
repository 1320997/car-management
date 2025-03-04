class SalesManagementController < ApplicationController
    def index
        # 現在の日時と比較して、販売開始されている車種を取得
        @available_cars = Car.where('sales_start_date <= ?', Date.today)
    end
end
