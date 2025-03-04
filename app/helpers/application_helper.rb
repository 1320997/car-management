module ApplicationHelper
    # 選択できる販売開始年月を指定する
    def sales_date_options
        start_date = Date.today << 3    # 3ヶ月前
        end_date = Date.today >> 6      # 6ヶ月後

        dates = (start_date..end_date).map { |d| d.beginning_of_month }.uniq
        dates.map { |date| [date.strftime("%Y年%m月"), date] }
    end
end
