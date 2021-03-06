# Fit Sesh
### Share Workouts / Track Results

This is a Sinatra App made by George Pianka for Flatiron School Final Project Section 2 (Ruby/Sinatra). The application allows the user to log, track, and share workouts. The user can store workout session details(toggle on/off the "share" option), track their progress across all sessions, and view a full multi-user generated index of all shared workouts. This way, the user can browse and get ideas for workouts while tracking their own progress.

---

## Setting Up

#### 1. Clone
`$ git clone https://github.com/NotoriousCottonball/fit_sesh.git`
#### 2. Bundler
`$ bundle install`
#### 3. Database
`$ rake db:schema:load` | `$ rake db:seed`
#### 4. SESSION_SECRET
##### *Set ENV('SESSION_SECRET') -OR- Default to a random 128-character code generated using the Rake Task below*
`$ rake session_secret`

## Initiating a Server

#### Rackup Command
`$ rackup`
#### Shotgun
##### *For application-wide reloading of all source files and templates on each request*
`$ shotgun`

---

## Contributing

Bug reports and pull requests are welcome on GitHub at
#### https://github.com/NotoriousCottonball/fit_sesh.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
