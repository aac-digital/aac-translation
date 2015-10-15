require 'test_helper'

class AacTranslationTest < ActiveSupport::TestCase
  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  test "Should return the key's value if key doesn't exist in the db" do
    assert_equal "main.lorem.ipsum", _('main.lorem.ipsum')
  end

  test "Return value from fixture" do
    translation_text = translation_texts(:main_title)
    
    assert_equal translation_text.text, _(translation_text.translation_key.key)
  end

  test "Sanitizes HTML" do
    translation_text = translation_texts(:html_in_title)

    assert_equal "My title2", strip_(translation_text.translation_key.key)
  end
end
