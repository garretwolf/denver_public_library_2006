class Author
  attr_reader :first_name, :last_name, :books

  def initialize(name)
    @first_name = name[:first_name]
    @last_name = name[:last_name]
    @books = []
  end

  def name
    "#{first_name} " + "#{last_name}"
  end

  def write(title, publication_date)
    book = Book.new({:author_first_name => @first_name, :author_last_name => @last_name,
      :title => title, :publication_date => publication_date})

      @books << book
      book
  end
end
