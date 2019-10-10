# Docker

Easy workaround for quirks you will encounter when running crystal in Docker.

## What this will fix

1. Unresponsiveness to `SIGINT` and `SIGTERM` when running in Docker (`Ctrl-c`
   will do nothing)
2. No output from your application to `STDOUT` or `STDERR`

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     docker:
       github: repomaa/docker.cr
   ```

2. Run `shards install`

## Usage

In your application preferably before doing anything else:

```crystal
require "docker"

Docker.setup
```

This will setup signal handlers for `SIGINT` and `SIGTERM` as well as setup
syncing for `STDOUT` and `STDERR`.

You can also do just one of those two things by calling either
`Docker.setup_signal_handling` or `Docker.setup_io_syncing` instead of
`Docker.setup`.

If you found this helpful, consider donating over liberapay!

[![Donate](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/jokke/donate)


## Contributing

1. Fork it (<https://github.com/repomaa/docker.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Joakim Repomaa](https://github.com/repomaa) - creator and maintainer
