class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def books
    @authors.map do |author|
      author.books
    end.flatten
  end

  # def publication_time_frame_for(author)
  #   time_frame = Hash.new
  #   start = @authors.books.min do |book|
  #     book.publication_year
  #     end
  #   end
  end
