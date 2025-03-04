class CarMakersController < ApplicationController
    # CarMaker一覧画面表示
    def index
        @car_makers = CarMaker.all
    end
end
