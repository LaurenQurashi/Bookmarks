require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG::Connection.open(:dbname => 'bookmark_manager_test')
    else
      connection = PG::Connection.open(:dbname => 'bookmark_manager')
    end
    results = connection.exec_params('SELECT * FROM bookmarks')

    results.map do |row|
      row["url"]
    end

    end

end
