class CreateHealthChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :health_checks do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.integer :height
      t.string :height_in
      t.integer :weight
      t.string :weight_in
      t.string :daily_activity_level
      t.string :calculated_BMR

      t.timestamps
    end
  end
end
