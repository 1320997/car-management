class CarMakersController < ApplicationController
    # CarMaker 一覧画面表示
    def index
        @car_makers = CarMaker.all
    end

    # CarMaker 作成画面表示
    def new
        @car_maker = CarMaker.new
    end

    # CarMaker 作成処理
    def create
        @car_maker = CarMaker.new(car_maker_params)
        if @car_maker.save
            redirect_to car_makers_path
        end
    end

    private
    # ストロングパラメータ
    # permitで指定した項目を許可する
    def car_maker_params
        params.require(:car_maker).permit(:name)
    end
end
