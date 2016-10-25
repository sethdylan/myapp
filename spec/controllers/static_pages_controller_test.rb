require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  context "should get index" do
    get static_pages_index_url
    assert_response :success
  end

end
