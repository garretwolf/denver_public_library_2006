class Book
  attr_reader :title, :author_first_name, :author_last_name,
  :publication_date

  def initialize(info)
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @title = info[:title]
    @publication_date = info[:publication_date]
  end

  def author
    "#{author_first_name} " + "#{author_last_name}"
  end

  def publication_year
    publication_date[-4..-1]
  end
end
