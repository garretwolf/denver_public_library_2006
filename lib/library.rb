class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    # require "pry"; binding.pry
  end

  def books
    @authors.map do |author|
      author.books
    end.flatten
  end
end
