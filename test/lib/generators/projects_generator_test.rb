require 'test_helper'
require 'generators/projects/projects_generator'

class ProjectsGeneratorTest < Rails::Generators::TestCase
  tests ProjectsGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
