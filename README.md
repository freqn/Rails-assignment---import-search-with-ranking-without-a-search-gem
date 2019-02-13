Tasks completed.....

## Web Development Assignment

We would like to thank you for taking the time to complete this assignment. We believe this to be an effective way at allowing you to show us your skills, on your own time, without the pressure of someone looking over your shoulder (like most live whiteboard tests). Your code will be used to help us decide if we'd like to proceed with the interview process. Please understand that completing this assignment doesn't guarantee a job or follow up interviews. We will keep you posted either way. Reach out to point of contact at Doximity with any questions.

_Note that it should take you 2-4 hours to complete this assignment._


## How to Submit your Completed Assignment

1. Fork the `dox-blog` repository by visiting [this page](https://gitlab.com/doximity-review/dox-blog/forks) and clicking the fork button on the top right.
2. Create a new branch by visiting https://gitlab.com/`YOUR-GITLAB`/dox-blog/branches - name your branch after your `firstname-lastname`.
3. At this point, you can grab the SSH URL at the top of https://gitlab.com/`YOUR-GITLAB`/dox-blog, clone the repository locally and do you work on the newly created branch.
4. Visit https://gitlab.com/`YOUR-GITLAB`/dox-blog/project_members under "Add a Member" type in `doximity-review` under "Select members to invite", select a role of `Master` and click "Add to project".
5. Once you are ready to submit your work, go back to https://gitlab.com/`YOUR-GITLAB`/dox-blog and click on "Create merge Request" on the top right.
6. From the page above, title and describe your assignment. Then select `doximity-review` from the "Assignee" dropdown, and click the "Submit merge request" button.


## Please Read the Following Carefully

* You will have access to this repository for **2-weeks only**, please complete your assignment within this time frame.
* Code Style Guide can be found [here](https://github.com/bbatsov/ruby-style-guide), use 2 soft-tabs.
* The tests included are very basic, better tests are encouraged particularly for logic you add.
* Please refrain from including unnecessary gems or spending time on CSS. Avoid pushing indentation changes to current files, this makes the changeset harder to read.
* The use of any kind of JavaScript front-end enhancements is 100% optional, feel free to add if you'd like to show your skills. This should NOT be where you spend most of your time.
* Once completed, email a link of your merge (https://gitlab.com/YOUR-GITLAB/dox-blog/merge_requests/1) request to your point of contact at Doximity.


### Setup

Run `bin/setup` and then boot the app with `rails server`

### Running Tests

Run `bundle exec rspec`


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
