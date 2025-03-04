class Car < ApplicationRecord
  belongs_to :car_maker

  validates :name, presence: true
end
