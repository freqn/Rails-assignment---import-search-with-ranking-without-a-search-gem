require 'csv'

class ArticleService
  def self.import
    file = 'db/data/articles.csv'
    CSV.foreach(file, headers: true) do |row|
      process_row(row)
    end
  end

  private

  def self.process_row(row)
    binding.pry
    data = row.to_h
    author = Author.where(name: data["author name"]).first_or_create
    Article.where(title: data["title"]).first_or_create(
      body: data["body"].delete('["').delete('"]'),
      author: author,
      hero_image_name: data["hero image"]
    )
  end
end