# ClassAncestrySort

[![Gem Version](https://badge.fury.io/rb/class_ancestry_sort.svg)](https://rubygems.org/gems/class_ancestry_sort)
[![Build Status](https://travis-ci.org/gabynaiman/class_ancestry_sort.svg?branch=master)](https://travis-ci.org/gabynaiman/class_ancestry_sort)
[![Coverage Status](https://coveralls.io/repos/github/gabynaiman/class_ancestry_sort/badge.svg?branch=master)](https://coveralls.io/github/gabynaiman/class_ancestry_sort?branch=master)
[![Code Climate](https://codeclimate.com/github/gabynaiman/class_ancestry_sort.svg)](https://codeclimate.com/github/gabynaiman/class_ancestry_sort)
[![Dependency Status](https://gemnasium.com/gabynaiman/class_ancestry_sort.svg)](https://gemnasium.com/gabynaiman/class_ancestry_sort)

Topological sort for classes using ancestors as dependencies

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'class_ancestry_sort'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install class_ancestry_sort

## Usage

```ruby
classes = [NoMethodError, StandardError, ArgumentError, NameError, StandardError, Exception, RuntimeError]

ClassAncestrySort.asc classes # => [Exception, StandardError, NameError, NoMethodError, ArgumentError, RuntimeError]
ClassAncestrySort.desc classes # => [RuntimeError, ArgumentError, NoMethodError, NameError, StandardError, Exception]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gabynaiman/class_ancestry_sort.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
