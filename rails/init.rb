def setup_test_environment( env )
  puts "", "Connecting to #{db_type( env )} database ..."
  ActiveRecord::Base.establish_connection( Rails.configuration.database_configuration["test_#{env}"] )
  puts building_database_statement, ""
  load schema_path
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

if Rails.env.test?
  setup_test_environment( ENV['DB'] || 'test' )
end