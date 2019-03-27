require 'PG'

def setup_test_database # similar function to a before each in rspec
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks;")
end
