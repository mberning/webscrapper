require 'test/unit'
require 'lib/webscrapper'

class TestWebscrapperModule < Test::Unit::TestCase
  def test_module_exists
    assert Webscrapper.is_a?(Module)
  end

  def test_config_exists
    assert Webscrapper.const_defined?(:APP_CONFIG)
  end

  def test_config_valid
    assert Webscrapper::APP_CONFIG.keys.include?('sites')
    assert Webscrapper::APP_CONFIG.keys.size > 0
  end

  def test_logger
    assert Webscrapper.const_defined?(:LOG)
    assert Webscrapper::LOG.info('test log')
  end
end


