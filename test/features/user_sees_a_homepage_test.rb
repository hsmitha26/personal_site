require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'
    # require 'pry'; binding.pry
    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_can_see_error_message
    skip
    visit '/'

    assert page.has_no_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
