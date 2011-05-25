require 'rails/generators/named_base'

# Blatantly stolen from rspec-rails
module MiniTest
  module Generators
    class Base < ::Rails::Generators::NamedBase #:nodoc:
      def self.source_root
        @_minitest_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'minitest', generator_name, 'templates'))
      end
    end
  end
end
