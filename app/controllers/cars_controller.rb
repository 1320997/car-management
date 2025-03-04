class CarsController < ApplicationController
    before_action :set_car, only: %i[edit update destroy]

    # Car 一覧画面表示
    def index
        @cars = Car.all
    end

    # Car 作成画面表示
    def new
        @car = Car.new
    end

    # Car 作成処理
    def create
        @car = Car.new(car_params)
        if @car.save
            redirect_to cars_path
        end
    end

    # Car 編集画面表示
    def edit
    end

    # Car 更新処理
    def update
        if @car.update(car_params)
            redirect_to cars_path
        end
    end

    # Car 削除処理
    def destroy
        @car.destroy
        redirect_to cars_path
    end

    private
    # ストロングパラメータ
    # permitで指定した項目を許可する
    def car_params
        params.require(:car).permit(:name, :car_maker_id, :sales_start_date, :memo)
    end

    # id指定でtaskを検索して設定
    def set_car
        @car = Car.find(params[:id])
    end
end
