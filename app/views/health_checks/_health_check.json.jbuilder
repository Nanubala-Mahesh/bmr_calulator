json.extract! health_check, :id, :name, :age, :gender, :height, :height_in, :weight, :weight_in, :daily_activity_level, :calculated_BMR, :created_at, :updated_at
json.url health_check_url(health_check, format: :json)
