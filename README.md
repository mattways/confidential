[![Gem Version](https://badge.fury.io/rb/confidential.svg)](http://badge.fury.io/rb/confidential) [![Code Climate](https://codeclimate.com/github/museways/confidential/badges/gpa.svg)](https://codeclimate.com/github/museways/confidential) [![Build Status](https://travis-ci.org/museways/confidential.svg?branch=master)](https://travis-ci.org/museways/confidential)

# Confidential

Loads your confidential configuration into envs in rails.

## Install

Put this line in your Gemfile:
```ruby
gem 'confidential'
```

Then bundle:

    $ bundle

## Configuration

Put your confidential information in config/confidential.yml:
```yml
DB_USER: user
DB_PASS: pass
```

NOTE: Probably you want to ignore config/confidential.yml in your repo.

## Usage

All the keys will be loaded into envs, you may want to use those for your database.yml:
```yml
production:
  username: <%= ENV['DB_USER'] %>
  password: <%= ENV['DB_PASS'] %>
```

## Credits

This gem is maintained and funded by [museways](http://museways.com).

## License

It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.
