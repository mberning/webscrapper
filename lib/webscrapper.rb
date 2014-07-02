module Webscrapper
  require 'logger'
  require 'yaml'

  example_config_file = File.expand_path(File.join('..', 'config', 'example.config.yml'), File.dirname(__FILE__))
  user_config_file = File.expand_path(File.join('..', 'config', 'config.yml'), File.dirname(__FILE__))
  valid_files = [example_config_file, user_config_file].select { |f| File.exists?(f) }

  APP_CONFIG = YAML.load_file(valid_files.first)

  LOG = Logger.new(STDOUT)
  LOG.level = Logger::DEBUG
end