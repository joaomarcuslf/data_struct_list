# DataStructList

Most of data structure class uses C, python or Java to teach, this lib was made to add some Data Structure Architecture using ruby syntax.

## TODO
- [x] Stack
- [x] Simple Linked List
- [ ] Double Linked List
- [ ] Cycle Simple Linked List
- [ ] Cycle Double Linked List

## Installation

Install this gem on terminal of you choice:

```sh
 $ gem install 'data_struct_list'
```

## Usage

Add this gem on your code:
```Ruby

  include 'data_struct_list'

  #Code

   l = DataStructList::SimpleLinkedList.new # This will create a Simple Linked List
   l.head.quant # => 0

   my_info = {
    name: "João Marcus",
    age: 19,
    fav_lang: "Ruby"
   }

   l.insert(my_info) # This will insert a new node at the first id, and 'my_info' will be it's hash info
   l.first.hash[:name] # => "João Marcus"
   l.head.quant # => 1

   l.find(0) # This will return the desirable elm or nil

   l.remove(0) # => nil
   l.head.quant # => 0

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joaomarcuslf/data_struct_list. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
