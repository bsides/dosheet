require 'test_helper'

class ListAssociationsControllerTest < ActionController::TestCase
  setup do
    @list_association = list_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_association" do
    assert_difference('ListAssociation.count') do
      post :create, list_association: { first_list_id: @list_association.first_list_id, second_list_id: @list_association.second_list_id }
    end

    assert_redirected_to list_association_path(assigns(:list_association))
  end

  test "should show list_association" do
    get :show, id: @list_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_association
    assert_response :success
  end

  test "should update list_association" do
    patch :update, id: @list_association, list_association: { first_list_id: @list_association.first_list_id, second_list_id: @list_association.second_list_id }
    assert_redirected_to list_association_path(assigns(:list_association))
  end

  test "should destroy list_association" do
    assert_difference('ListAssociation.count', -1) do
      delete :destroy, id: @list_association
    end

    assert_redirected_to list_associations_path
  end
end
