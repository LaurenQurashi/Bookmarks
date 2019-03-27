require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG::Connection.open(:dbname => 'bookmark_manager_test')
    else
      connection = PG::Connection.open(:dbname => 'bookmark_manager')
    end
    results = connection.exec('SELECT * FROM bookmarks')

    results.map do |row|
      row["url"]
    end

  end

  def self.create(url)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG::Connection.open(:dbname => 'bookmark_manager_test')
    else
      connection = PG::Connection.open(:dbname => 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")
  end

end
