This repo is the result of a recent coding assignment I had on Gitlab where I was required to complete 3 assigned stories for a company's blog

Here's an overview of work performed:

Story 1 - Created rake task (nothing was specified for actual end-user actions), service object & custom seed file to import articles (and create authors) from .csv file. The task command is rails db:seed:articles (commented at top of db/custom_seeds/articles.rb).
Story 2 - Added basic text string search of titles and body text leveraging the sidebar search field.
Story 3 - Added relevancy sorting to search with an ActiveSupport::Concern. Titles carry heavier weight than body in ranking.

Story summaries..

### Story 1

```
Story Title: As a reader I would like to have all articles imported so that I can read the blog.

Description: You will find a CSV file under db/data folder, write a class and seed file to handle
the importing of articles into the DB. While importing, ensure you create necessary author
records based on the content of the CSV file and associate each article to the proper author.
```

### Story 2
```
Story Title: As a reader I would like to search the blog so that I can find articles which interest me.

Description: Leverage the current sidebar HTML under 'Search Articles' to provide search functionality.
Note that leveraging MySQL `like` for this is perfectly fine, do not use a search gem.
Search against article body and title.
```

### Story 3
```
Story Title: As a reader I would like my search results to be sorted by relevancy according to
my search query so that I see the most relevant results at the top.

Description: Create a Ruby class and a simple word analyses algorithm.
Do not use a search engine library, you need to create your own logic.

Incorporate this relevancy score in the sort order of the search results.
Search against article body and title. An article that contains the same
word twice would have a relevancy score that is higher than an article
which only contains the searched word once. Title of the article should
have a heavier relevancy weight.
```

## What to Expect after you Submit

Our team will be notified and we'll review the submission within 3 days. We'll check for complexity, test coverage, and adherence to style. We're looking for clean, easy to read, maintainable code. Good test coverage, and performance considerations are a plus as well.

We know your time is valuable and appreciate you taking the time to complete this assignment.
