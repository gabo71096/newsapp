# Personal unit test file for job application at GenoSUR
require '../test_helper'

class NoticiumTest < ActiveSupport::TestCase
  # Added correction to noticium.rb in models folder
  test 'should not save news without title' do
    news = Noticium.new
    assert_not news.save, 'Saved news without title'
  end

  test 'should get all news' do
    news = Noticium.all
    assert_not_empty news, "Object is not empty"
  end
end
