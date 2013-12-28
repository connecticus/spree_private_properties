Spree Private Properties
===

[![Build Status](https://travis-ci.org/Willianvdv/spree_private_properties.png?branch=master)](https://travis-ci.org/Willianvdv/spree_private_properties.png) [![Coverage Status](https://coveralls.io/repos/Willianvdv/spree_private_properties/badge.png)](https://coveralls.io/r/Willianvdv/spree_private_properties)

Very simple gem to add a visibilty attribute to properties.

Installation
---

Add spree_private_properties to your Gemfile:

```ruby
gem 'spree_private_properties', github: 'Willianvdv/spree_private_properties'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_private_properties:install
```

BIG FAT WARING!
---

It only filters on the products#show controller. Don't add super private stuff to the properties until you are sure it isn't displayed somewhere else (like the products api)!

Testing
---

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```


Copyright (c) 2013 Willian van der Velde, released under the New BSD License
