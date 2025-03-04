class CarsController < ApplicationController
    # Car一覧画面表示
    def index
        @cars = Car.includes(:car_maker).all
    end
end
