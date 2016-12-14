##### NOTE: Since rails 4.1 this gem is deprecated in favor of secrets.

---

[![Gem Version](https://badge.fury.io/rb/confidential.svg)](http://badge.fury.io/rb/confidential)
[![Code Climate](https://codeclimate.com/github/mmontossi/confidential/badges/gpa.svg)](https://codeclimate.com/github/mmontossi/confidential)
[![Build Status](https://travis-ci.org/mmontossi/confidential.svg)](https://travis-ci.org/mmontossi/confidential)
[![Dependency Status](https://gemnasium.com/mmontossi/confidential.svg)](https://gemnasium.com/mmontossi/confidential)

# Confidential

Loads your confidential configuration into envs in rails.

## Install

Put this line in your Gemfile:
```ruby
gem 'confidential'
```

Then bundle:
```
$ bundle
```

## Configuration

Generate the confidential file:
```
$ bundle exec rails g confidential:install
```

Put your confidential information in it:
```erb
DB_USER: user
DB_PASS: pass
```

NOTE: You may want to ignore the file in your repo.

## Usage

All the keys will be loaded into envs and be ready to use:
```erb
production:
  username: <%= ENV['DB_USER'] %>
  password: <%= ENV['DB_PASS'] %>
```

## Contributing

Any issue, pull request, comment of any kind is more than welcome!

I will mainly ensure compatibility to PostgreSQL, AWS, Redis, Elasticsearch, FreeBSD and Memcached. 

## Credits

This gem is maintained and funded by [mmontossi](https://github.com/mmontossi).

## License

It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.
