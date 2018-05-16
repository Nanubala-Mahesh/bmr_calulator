class AddEsimateCalPerDayToHealthChecks < ActiveRecord::Migration[5.1]
  def change
    add_column :health_checks, :estimated_cal_per_day, :string
  end
end
