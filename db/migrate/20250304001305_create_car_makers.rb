class CreateCarMakers < ActiveRecord::Migration[7.0]
  def change
    create_table :car_makers do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :car_makers, :name, unique: true
  end
end
