# Personal unit test file for job application at GenoSUR
require "../test_helper"

class AdminUserTest < ActionDispatch::IntegrationTest
  test 'get index route' do
    get '/admin/login'
    assert_response :success
  end
end
