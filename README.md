# Simple docker for serving Jekyll pages with Tailwind

This docker is used at [my site](https://github.com/KevHH/personal-page) for GitHub page development with Tailwind, where a GitHub action scirpt is needed for compiling Jekyll and Tailwind into GitHub page production code.

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