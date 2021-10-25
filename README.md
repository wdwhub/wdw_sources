# WdwSources
Collect live data about Walt Disney World's attractions (rides), dining, and hotels (accommodations).

## Usage
Add this Rails engine to your app to create helpful insights about vacationing in Walt Disney World.

To update data from touringplans.com, inside your rails console run:
```bash
$ WdwSources::TouringplansUpdate.sync_all("attractions")
$ WdwSources::TouringplansUpdate.sync_all("dining")
$ WdwSources::TouringplansUpdate.sync_all("hotels")

```


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'wdw_sources'
```

And then execute:
```bash
$ bundle
```
And then execute:
```bash
$ rails g wdw_sources:install
```

Or install it yourself as:
```bash
$ gem install wdw_sources
```


## Contributing
Thanks to touringplans.com for opening an API and making this gem possible.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
