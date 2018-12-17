# Fit Sesh
### Best Reviewed and Recently Added Movies/Television Based on User's Streaming Subscriptions

This Ruby Gem provides a CLI to view Highest Rated/Recently Added Movies and Television according to Vulture.com Streaming Recommendations, and provides additional details on the user's selection according to IMDB.com.
The Gem asks which popular streaming services the user has access to and whether the user wants recommendations for Highest Reviewed Films, Highest Reviewed Television, or Most Recent Additions.
The Gem returns a filtered list of recommendations from Vulture.com and then further details/information from IMDB.com upon user request.

## Usage

After cloning with `git clone` from the command line, use the executable to run the application.

    $ what_to_watch

From within your own application's code, start the CLI Controller.

    $ WhatToWatch::CLI.new.start

## Contributing

Bug reports and pull requests are welcome on GitHub at
### https://github.com/NotoriousCottonball/fit_sesh.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
