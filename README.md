# Freefeed Conversation Club Topic Starter

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Running locally:

``` bash
bundle
bundle exec rails server
```

Configuration:

- In development environment questions will be loaded from `db/questions.txt` under project root.
- In production exnvironment questions will be loaded from `ENV['questions_source_url']`.
- In both cases each non-empty line from the text file will be treated as a separate question.

How to use:

- Click "New session" and share session link with other participants.
- Each time a participant clicks `Moar!`, the whole group sees new question.

Demo:

[![Topic Starter Demo](http://img.youtube.com/vi/g8fA6ZQKwCo/0.jpg)](https://www.youtube.com/watch?v=g8fA6ZQKwCo)
