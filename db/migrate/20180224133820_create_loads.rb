class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|
      t.string :name
      t.string :type_of_load
      t.decimal :rated_power
      t.float :daily_hours
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
