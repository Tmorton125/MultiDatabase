require 'test_helper'
require 'generators/multi_database/install/install_generator'

module MultiDatabase
  class MultiDatabase::InstallGeneratorTest < Rails::Generators::TestCase
    tests MultiDatabase::InstallGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
