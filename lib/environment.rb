require_relative "./test_cli/version"
require_relative './test_cli/cli'
require_relative './test_cli/berries'
require_relative './test_cli/api'

require "pry"
require "httparty"

module TestCli
  class Error < StandardError; end
  end