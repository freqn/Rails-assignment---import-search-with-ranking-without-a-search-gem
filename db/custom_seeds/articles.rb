# rails db:seed:articles

article_count = Article.count
ArticleService.import
final_count = Article.count - article_count
if final_count > 0
  puts "\n#{final_count} article(s) imported!"
else
  puts "\nThese articles have already been imported."
end