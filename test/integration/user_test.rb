# Personal integration test file for job application at GenoSUR
require '../test_helper'

class UserTest < ActionDispatch::IntegrationTest
  def setup
    @new = noticia :one
    @user = admin_users :one
  end

  test 'login and post news' do
    get '/admin/login'
    assert_response :success
    post '/admin/login', params: { session: { email: @user.email, password: @user.encrypted_password } }
    assert_response :success
    get '/admin/noticia'
    assert_response :found
    get '/admin/noticia/new'
    assert_response :found
    post '/admin/noticia',
         params: { noticium: { title: @new.title, lower: @new.lower, author: @new.author, body: @new.body,
                               image: @new.image } }
    assert_response :found
    get '/admin/logout'
    assert_response :found
  end
end
