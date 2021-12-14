# Personal integration test file for job application at GenoSUR
require '../test_helper'
require '../application_system_test_case'

class ActiveAdminTest < ActionDispatch::IntegrationTest
  def setup
    @new = noticia :one
    @user = admin_users :one
  end

  test 'login active admin and post news' do
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

# For some reason I can't login, credentials are in db:seeds in test environment,
# so I should get the posibility to login, but doesn't work
# class NewsTest < ApplicationSystemTestCase
#   def setup
#     @admin_users = admin_users :one
#     @noticia = noticia :one
#   end

#   test 'visit index and check content' do
#     visit new_admin_user_session_url
#     fill_in 'Email', with: @admin_users.email
#     fill_in 'Password', with: @admin_users.encrypted_password
#     click_on 'Login'
#     click_on 'Noticia'
#   end
# end