require '../test_helper'

class NoticiumTest < ActiveSupport::TestCase
  test 'should not save news without title' do
    news = Noticium.new
    assert_not news.save, 'Saved news without title'
  end

  test 'should get all news' do
    news = Noticium.all
    assert news
  end
end
