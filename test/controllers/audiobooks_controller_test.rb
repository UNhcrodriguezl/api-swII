require 'test_helper'

class AudiobooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audiobook = audiobooks(:one)
  end

  test "should get index" do
    get audiobooks_url, as: :json
    assert_response :success
  end

  test "should create audiobook" do
    assert_difference('Audiobook.count') do
      post audiobooks_url, params: { audiobook: { synopsis: @audiobook.synopsis, title: @audiobook.title, year: @audiobook.year } }, as: :json
    end

    assert_response 201
  end

  test "should show audiobook" do
    get audiobook_url(@audiobook), as: :json
    assert_response :success
  end

  test "should update audiobook" do
    patch audiobook_url(@audiobook), params: { audiobook: { synopsis: @audiobook.synopsis, title: @audiobook.title, year: @audiobook.year } }, as: :json
    assert_response 200
  end

  test "should destroy audiobook" do
    assert_difference('Audiobook.count', -1) do
      delete audiobook_url(@audiobook), as: :json
    end

    assert_response 204
  end
end
