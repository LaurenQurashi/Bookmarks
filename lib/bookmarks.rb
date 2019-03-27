require 'pg'

class Bookmark

  def self.all
    connection = PG::Connection.open(:dbname => 'bookmark_manager')
    results = connection.exec_params('SELECT * FROM bookmarks')

    results.map do |row|
      row["url"]
    end

    end

    # [
    #   "http://www.makersacademy.com",
    #   "http://www.destroyallsoftware.com",
    #   "http://www.google.com"
    #  ]
end
