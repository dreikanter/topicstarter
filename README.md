# Freefeed Conversation Club Topic Starter

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


How to use:

- Click "New session" and share session link with other participants.
- Each time a participant clicks `Moar!`, the whole group sees new question.
- Take a look at the demo: https://www.youtube.com/watch?v=g8fA6ZQKwCo

Running locally:

``` bash
bundle
bundle exec rails server
```

Running with Docker:

```bash
docker build . -t topicstarter
docker run --rm -ti -v $PWD:/usr/src topicstarter bash
bundle
bundle exec rails test
```

Configuration:

- In development environment questions will be loaded from `db/questions.txt` under project root.
- In production exnvironment questions will be loaded from `ENV['QUESTIONS_SOURCE_URL']`.
- In both cases each non-empty line from the text file will be treated as a separate question.
