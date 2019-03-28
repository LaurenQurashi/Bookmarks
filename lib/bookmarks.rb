require 'pg' # a little gem that allows us to interact with our data base

class Bookmark

  def self.all # a method that shows all bookmarks.
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG::Connection.open(:dbname => 'bookmark_manager_test') # says if it's a test then connect to the test database
    else
      connection = PG::Connection.open(:dbname => 'bookmark_manager') # says if it's not a test then connect to the real one.
    end
    results = connection.exec('SELECT * FROM bookmarks') # command which saves the output of the SQL command in a variable.

    results.map do |row|
      row["url"]
    end # if we just had our results, it'd give us an object that has the entry's deets in.
    # this iterates through all the objects we get back and only returns the row's url entry.

  end

  def self.create(title, url) # this is a method that makes a new bookmark.
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG::Connection.open(:dbname => 'bookmark_manager_test')
    else
      connection = PG::Connection.open(:dbname => 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks(title, url) VALUES('#{title}', '#{(url)}') RETURNING id, url, title;") # as SQL takes it's command as a string, you have to use string interpolation to
    # put a string in a string. This code adds to the database. Connection is the name we gave to the connection of the database.
  end

end
