require 'test/unit'
require 'lib/webscrapper'

class TestWebscrapperModule < Test::Unit::TestCase
  def test_module_exists
    assert Webscrapper.is_a?(Module)
  end
end


