require "test_helper"

class ScaffosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffo = scaffos(:one)
  end

  test "should get index" do
    get scaffos_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffo_url
    assert_response :success
  end

  test "should create scaffo" do
    assert_difference('Scaffo.count') do
      post scaffos_url, params: { scaffo: { body: @scaffo.body, title: @scaffo.title } }
    end

    assert_redirected_to scaffo_url(Scaffo.last)
  end

  test "should show scaffo" do
    get scaffo_url(@scaffo)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffo_url(@scaffo)
    assert_response :success
  end

  test "should update scaffo" do
    patch scaffo_url(@scaffo), params: { scaffo: { body: @scaffo.body, title: @scaffo.title } }
    assert_redirected_to scaffo_url(@scaffo)
  end

  test "should destroy scaffo" do
    assert_difference('Scaffo.count', -1) do
      delete scaffo_url(@scaffo)
    end

    assert_redirected_to scaffos_url
  end
end
