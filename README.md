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

    irb -Ilib -r<module_name>

