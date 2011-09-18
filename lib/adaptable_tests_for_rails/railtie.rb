require 'rails'

module AdaptableTestsForRails
  class Railtie < ::Rails::Railtie
    initializer "adaptable_tests_for_rails.initialize" do
      setup_test_environment( ENV['DB'] || 'test' )
    end

    def setup_test_environment( env )
      ActiveRecord::Base.establish_connection( Rails.configuration.database_configuration["test_#{env}"] )
      puts building_database_statement, ""
      silence_stream STDOUT do
        load schema_path
      end
    end

    def db_type( env )
      env.gsub( /test_/, '' ).gsub( /_/, ' ' )
    end

    def building_database_statement
      "Building database from db/schema.rb ..."
    end

    def schema_path
      "#{Rails.root}/db/schema.rb"
    end
  end
end

