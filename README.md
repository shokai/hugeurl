hugeurl
=======
expand tinyurl, bit.ly, t.co and more.

* https://github.com/shokai/hugeurl


Installation
------------

    % gem install hugeurl


Usage
-----

```ruby
require 'rubygems'
require 'hugeurl'
puts URI.parse("http://bit.ly/d4VYD2").to_huge  # => get expanded URI instance
```

### hugeurl command

    % hugeurl http://bit.ly/d4VYD2

or

    % cat url_list.txt | hugeurl


Test
----

    % gem install bundler
    % bundle install
    % rake test


Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
