require 'test_helper'

class HealthChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_check = health_checks(:one)
  end

  test "should get index" do
    get health_checks_url
    assert_response :success
  end

  test "should get new" do
    get new_health_check_url
    assert_response :success
  end

  test "should create health_check" do
    assert_difference('HealthCheck.count') do
      post health_checks_url, params: { health_check: { age: @health_check.age, calculated_BMR: @health_check.calculated_BMR, daily_activity_level: @health_check.daily_activity_level, gender: @health_check.gender, height: @health_check.height, height_in: @health_check.height_in, name: @health_check.name, weight: @health_check.weight, weight_in: @health_check.weight_in } }
    end

    assert_redirected_to health_check_url(HealthCheck.last)
  end

  test "should show health_check" do
    get health_check_url(@health_check)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_check_url(@health_check)
    assert_response :success
  end

  test "should update health_check" do
    patch health_check_url(@health_check), params: { health_check: { age: @health_check.age, calculated_BMR: @health_check.calculated_BMR, daily_activity_level: @health_check.daily_activity_level, gender: @health_check.gender, height: @health_check.height, height_in: @health_check.height_in, name: @health_check.name, weight: @health_check.weight, weight_in: @health_check.weight_in } }
    assert_redirected_to health_check_url(@health_check)
  end

  test "should destroy health_check" do
    assert_difference('HealthCheck.count', -1) do
      delete health_check_url(@health_check)
    end

    assert_redirected_to health_checks_url
  end
end
