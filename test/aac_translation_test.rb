require 'test_helper'

class AacTranslationTest < ActiveSupport::TestCase
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end

  test "Should return the key's value if key doesn't exist in the db" do
    assert_equal "main.lorem.ipsum", _('main.lorem.ipsum')
  end

  test "Return value from fixture" do
    assert_equal "main.lorem.ipsum", _('main.title')
  end
end
