require 'generators/minitest'

module MiniTest
  module Generators
    class PerformanceGenerator < MiniTest::Rails::Generators::Base
      check_class_collision :suffix => "Test"

      def create_test_files
        template 'performance_test.rb', File.join('test/performance', class_path, "#{file_name}_test.rb")
      end
    end
  end
end
