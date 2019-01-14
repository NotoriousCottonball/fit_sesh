User.create(username: "George", email: "george@email.com", password: "password")
paul = User.create(username: "Paul", email: "paul@email.com", password: "password1")
mark = User.create(username: "Mark", email: "mark@email.com", password: "password2")


Workout.create(duration_minutes: 15, user_id: 1, share_status: false)

paul.workouts.create(duration_minutes: 60, share_status: true)

Workout.create(duration_minutes: 30, user_id: 3, share_status: true)
