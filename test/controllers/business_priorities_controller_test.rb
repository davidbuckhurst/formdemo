require 'test_helper'

class BusinessPrioritiesControllerTest < ActionController::TestCase
  setup do
    @business_priority = business_priorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_priorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_priority" do
    assert_difference('BusinessPriority.count') do
      post :create, business_priority: { rule_name: @business_priority.rule_name }
    end

    assert_redirected_to business_priority_path(assigns(:business_priority))
  end

  test "should show business_priority" do
    get :show, id: @business_priority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_priority
    assert_response :success
  end

  test "should update business_priority" do
    patch :update, id: @business_priority, business_priority: { rule_name: @business_priority.rule_name }
    assert_redirected_to business_priority_path(assigns(:business_priority))
  end

  test "should destroy business_priority" do
    assert_difference('BusinessPriority.count', -1) do
      delete :destroy, id: @business_priority
    end

    assert_redirected_to business_priorities_path
  end
end
