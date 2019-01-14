george = User.create(username: "George", email: "george@email.com", password: "password")
paul = User.create(username: "Paul", email: "paul@email.com", password: "password1")
mark = User.create(username: "Mark", email: "mark@email.com", password: "password2")


lift = Workout.create(duration_minutes: 15, user_id: 1, share_status: false)

george.workouts.create(duration_minutes: 60, share_status: false)
paul.workouts.create(duration_minutes: 90, share_status: true)
paul.workouts.create(duration_minutes: 15, share_status: true)

bench = Workout.create(duration_minutes: 60, user_id: 3, share_status: true)
run = Workout.create(duration_minutes: 30, user_id: 3, share_status: true)

Exercise.create(name: "Tricep-Extension", description: "To begin, stand up with a dumbbell held by both hands. Your feet should be about shoulder width apart from each other. Slowly use both hands to grab the dumbbell and lift it over your head until both arms are fully extended.")

Exercise.create(name: "Bench-Press", description: "Lie back on a flat bench. Using a medium width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked.")

bench.exercise_instances.create(exercise_id: 1, weight_lbs: 20, sets: 3, reps: 12, exercise_rating: 4)

Workout.create(duration_minutes: 15, user_id: 2, share_status: false)

Workout.create(duration_minutes: 15, user_id: 2, share_status: true)

Workout.create(duration_minutes: 15, user_id: 2, share_status: false)
