# Mockoon API

This is an example of mock application which performs the whole OpenAPI spec.

Instruction of ORB setup is available in main README.md.

## Setup

To run dockerized version of mocked API use shell script `test_entrypoint.sh`
(requires `docker` and `docker-compose`). By default, API is available on port
`3003`, application runs on port `3003` in Docker host. Dockerfile was created
using mockoon-cli.

## Changes in API definition

To introduce changes in API definition it is necessary to change content of
`example-app-data.json` file. It can be done using
[mockoon application](https://mockoon.com/). After following instalation, API
Spec can be opened from application navigation bar
`File > Open environment > Select example-app-data.json`. Dockerized instance of
application is not hot-reloaded, therefore it's necessary to restart server for
changes to be applied.
