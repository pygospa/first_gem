# First time I have a cool batch

[![Gem
Version](https://badge.fury.io/rb/hola_pygospa.svg)](https://badge.fury.io/rb/hola_pygospa)

#Results of the 'Howto Gem' Tutorial

1. Create `lib/module.rb`
2. Create `./module.gemfile`
3. To create gem:

```bash
$ gem build hola_pygospa.gemspec
    Successfully built RubyGem
    Name: hola_pygospa
    Version: 0.0.0
    File: hola_pygospa-0.0.0.gem
```

4. To install:

```bash
$ gem install ./hola_pygospa-0.0.0.gem
    Successfully installed hola_pygospa-0.0.0
    1 gem installed
```

5. To test:

```ruby
$ irb
irb(main)> require 'hola_pygospa'
=> true
irb(main)> Hola.hi
Hello world!
=> nil
```

6. To share via rubygems (account required):

```bash
$ curl -u pygospa https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials; chmod 0600 ~/.gem/credentials
$ gem push hola_pygospa-0.0.0.gem
    Pushing gem to RubyGems.org...
    Successfully regirstered gem: hola_pygospa (0.0.0)
```

7. To install from RubyGems:

```bash
$ gem list -r hola_pygospa
    *** REMOTE GEMS ***
    hola_pygospa (0.0.0)
```


# Requiring more files

1. Create files under `lib/<module_name>/<file_name>.rb`
2. Require files in `lib/<module_name>.rb`
3. For testing:

```ruby
irb -Ilib -r<module_name>
```

4. Add file to `.gemspec`, so it get's included when installing via gem


# Adding an executable

1. Create executables under `bin/<executable_name>`

2. Test with `ruby -Ilib ./bin/<executable_name>`

3. Add it to the gemspec via `s.executables << 'hola'`

# Writing Tests

1. Create a `Rakefile` in root to autorun testsuite
2. Create test classes in `test/test_<file>.rb`
3. Run tests with `rake test` or just `rake`


# Document code
1. Either use RDoc markdown
2. Or YARD


