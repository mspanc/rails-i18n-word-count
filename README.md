# rails-i18n-word-count

Simple Rails I18n gem that helps in counting amount of words stored in locales for a single purpose of estimating translation cost.

It is extremely simple. It counts only Strings - Arrays etc. will be omitted.

## Installation

Add this line to your application's Gemfile:

    gem 'rails-i18n-word-count'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-i18n-word-count

## Examples

In order to count all words longer or equal than 3 characters stored 
in the locale tree `static_pages.homepage.*` of the current locale:

    I18n::WordCount.word_count("static_pages.homepage", 3)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT