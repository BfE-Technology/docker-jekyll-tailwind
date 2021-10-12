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
- jekyll/jekyll: 3.8
- github-pages: 219
- Entrypoint file obtained from [Jekyll Docker](https://github.com/envygeeks/jekyll-docker/blob/master/repos/jekyll/copy/all/usr/jekyll/bin/entrypoint). Last updated on 23 Aug 2020
