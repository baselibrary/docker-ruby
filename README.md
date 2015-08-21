# baselibrary/ruby [![Docker Repository on Quay.io](https://quay.io/repository/baselibrary/ruby/status "Docker Repository on Quay.io")](https://quay.io/repository/baselibrary/ruby)

[![](http://dockeri.co/image/baselibrary/ruby)](https://registry.hub.docker.com/u/baselibrary/ruby/)

## Installation and Usage

    docker pull quay.io/baselibrary/ruby:${VERSION:-latest}

## Available Versions (Tags)

* `latest`: ruby 2.2
* `1.8`: ruby 1.8
* `1.9`: ruby 1.9
* `2.0`: ruby 2.0
* `2.1`: ruby 2.1
* `2.2`: ruby 2.2

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Continuous Integration

Images are built and pushed to Docker Hub on every deploy. Because Quay currently only supports build triggers where the Docker tag name exactly matches a GitHub branch/tag name, we must run the following script to synchronize all our remote branches after a merge to master:

    make sync-branches
