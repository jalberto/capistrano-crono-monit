# Capistrano::Crono::Monit

Sidekiq integration for Capistrano & Monit

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-crono-monit', github: 'jalbertos/capistrano-crono-monit'

And then execute:

    $ bundle


## Usage
```ruby
    # Capfile

    require 'capistrano/crono/monit'
```


Configurable options, shown here with defaults:

```ruby
    set :crono_pid, -> { File.join(shared_path, 'tmp', 'pids', 'crono.pid') }
    set :crono_env, -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }
    set :crono_log, -> { File.join(shared_path, 'log', 'crono.log') }
    set :crono_role, -> { :app }
```

## Customizing the monit crono templates

If you need change some config in redactor, you can

```
    bundle exec rails generate capistrano:crono:monit:template

```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
