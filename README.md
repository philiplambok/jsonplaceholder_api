# JsonplaceholderApi

An experimental project to design a nice design of api wrapper pattern.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jsonplaceholder_api'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jsonplaceholder_api

## Usage

```rb
# create client object
client = JsonplaceholderApi::Client.new

# find all posts
posts = client.posts.all 
posts.to_json #> [{ id: 10, title: 'Post title', body: 'Post body' }]

# find spesific post
post = client.posts.find(2)
post.to_json #> { id: 2, title: 'Post title', body: 'Post body' }

# update the post
post.update(title: 'Updated post')
post.to_json #> { id: 2, title: 'Updated post', body: 'Post body' }

# find list comments of the post
post.comments.to_json #> [{ id: 5, user_id: 12, body: 'This is sample comment' }]

# delete the post
post.destroy #> #> { id: 2, title: 'Updated post', body: 'Post body' }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/philiplambok/jsonplaceholder_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/philiplambok/jsonplaceholder_api/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the JsonplaceholderApi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/philiplambok/jsonplaceholder_api/blob/master/CODE_OF_CONDUCT.md).
