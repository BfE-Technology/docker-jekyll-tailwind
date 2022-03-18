# Simple docker for serving GitHub pages locally

## Build docker image
You only need to do this once and in the future if there are changes to the Gemfile.

```
    docker build . -t github-page-docker
```

Use `--no-cache` to build without using cache.

Note that the jekyll serve command is contained in `entrypoint.sh`.

## Development
Move the `docker-compose.yml` to your development folder and run `docker-compose up`.

## Dependencies
- jekyll: 4.2.1
- tailwind: 3.0.8