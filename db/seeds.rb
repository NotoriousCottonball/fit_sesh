george = User.create(username: "George", email: "george@email.com", password: "password")
lift_a = Workout.create(duration_minutes: 90, user_id: 1, share_status: true)
george.workouts.create(duration_minutes: 45, share_status: true, created_at: 2.days.ago)
george.workouts.create(duration_minutes: 30, share_status: true, created_at: 5.days.ago)
george.workouts.create(duration_minutes: 15, share_status: true, created_at: 7.days.ago)
lift_b = Workout.create(duration_minutes: 90, user_id: 1, share_status: false)
george.workouts.create(duration_minutes: 45, share_status: false, created_at: 2.days.ago)
george.workouts.create(duration_minutes: 30, share_status: false, created_at: 5.days.ago)
george.workouts.create(duration_minutes: 15, share_status: false, created_at: 7.days.ago)



paul = User.create(username: "Paul", email: "paul@email.com", password: "password1")
run_a = Workout.create(duration_minutes: 90, user_id: 2, share_status: true)
paul.workouts.create(duration_minutes: 45, share_status: true, created_at: 2.days.ago)
paul.workouts.create(duration_minutes: 30, share_status: true, created_at: 5.days.ago)
paul.workouts.create(duration_minutes: 15, share_status: true, created_at: 7.days.ago)
run_b = Workout.create(duration_minutes: 90, user_id: 2, share_status: false)
paul.workouts.create(duration_minutes: 45, share_status: false, created_at: 2.days.ago)
paul.workouts.create(duration_minutes: 30, share_status: false, created_at: 5.days.ago)
paul.workouts.create(duration_minutes: 15, share_status: false, created_at: 7.days.ago)


mark = User.create(username: "Mark", email: "mark@email.com", password: "password2")
bench_a = Workout.create(duration_minutes: 90, user_id: 3, share_status: true)
mark.workouts.create(duration_minutes: 45, share_status: true, created_at: 2.days.ago)
mark.workouts.create(duration_minutes: 30, share_status: true, created_at: 5.days.ago)
mark.workouts.create(duration_minutes: 15, share_status: true, created_at: 7.days.ago)
bench_b = Workout.create(duration_minutes: 90, user_id: 3, share_status: false)
mark.workouts.create(duration_minutes: 45, share_status: false, created_at: 2.days.ago)
mark.workouts.create(duration_minutes: 30, share_status: false, created_at: 5.days.ago)
mark.workouts.create(duration_minutes: 15, share_status: false, created_at: 7.days.ago)


Exercise.create(name: "Bench-Press", description: "Lie face up on a flat bench, and grip a barbell with the hands slightly wider than shoulder-width. Press the feet into the ground and the hips into the bench while lifting the bar off the rack. Slowly lower the bar to the chest by allowing the elbows to bend out to the side. Stop when the elbows are just below the bench, and press feet into the floor to press the weight straight up to return to the starting position.")
Exercise.create(name: "Tricep-Extension", description: "To begin, stand up with a dumbbell held by both hands. Your feet should be about shoulder width apart from each other. Slowly use both hands to grab the dumbbell and lift it over your head until both arms are fully extended. Lower the dumbbell behind your head in a controlled manner without moving your upper arms. Continue lowering the dumbbell until your elbows reach a 90 degree bend or until your upper arms begin to move backwards. Be sure to avoid making contact with the back of your head. Also, avoid changing the position in your head, torso, upper arms, wrists and feet. Attempt to keep your upper arms vertical to the floor throughout the exercise and your elbows shoulder-width apart.")
Exercise.create(name: "Back-Squat", description: "Place a barbell in a rack just below shoulder-height. Dip under the bar to put it behind the neck across the top of the back, and grip the bar with the hands wider than shoulder-width apart. Lift the chest up and squeeze the shoulder blades together to keep the straight back throughout the entire movement. Stand up to bring the bar off the rack and step backwards, then place the feet so that they are a little wider than shoulder-width apart. Sit back into hips and keep the back straight and the chest up, squatting down so the hips are below the knees. From the bottom of the squat, press feet into the ground and push hips forward to return to the top of the standing position.")
Exercise.create(name: "Lateral-Lunge", description: "Stand with the feet hip-width apart holding one dumbbell in each hand with the palms facing each other. Step directly to the right, keeping the right foot parallel to the left as it hits the ground, and push the right hip back while reaching for the right foot with both hands on either side of the right leg. To stand up, push the right foot into the floor while pulling the body back to the center with the inside of the left leg.")
Exercise.create(name: "Bent-Over-Row", description: "Grip a barbell with palms down so that the wrists, elbows, and shoulders are in a straight line. Lift the bar from the rack, bend forward at the hips, and keep the back straight with a slight bend in the knees. Lower the bar towards the floor until the elbows are completely straight, and keep the back flat as the bar is pulled towards the belly button. Then slowly lower the bar to the starting position and repeat.")
Exercise.create(name: "Standing-Shrug", description: "Stand holding dumbbells in your hands with a closed, neutral grip (thumbs around the handles with your palms facing your body). Position the dumbbells alongside your thighs with your elbows fully extended. Assume a split-stance position to stabilize your body, stiffen your torso by contracting your abdominal and core muscles, and depress and retract your scapulae (pull your shoulders down and back). Exhale and slowly shrug your shoulders upward, avoiding any shoulder rotation or elbow flexion (bending). Inhale and gently lower the dumbbells back towards your starting position keeping your elbows extended and neutral grip position. Maintain your split-stance, torso, shoulder and wrist positions.")
Exercise.create(name: "Bicep-Curl", description: "Hold the barbell with both hands facing up so the wrists, elbows, and shoulders are in a straight line about shoulder-width apart. Lift the barbell toward the shoulders while bending the elbows and keeping them next to the middle of the body. Slowly lower the weight to return to the starting position. Keep chest still, using just the arms for the movement.")
Exercise.create(name: "Side-Plank", description: "Lie on your side on an exercise mat with your legs extended and the left leg lying directly on the right. Bend your right leg to 90 degrees of flexion while keeping the left leg extended, with the inside surface of your left foot making contact with the mat. Raise your upper body to support yourself on your right arm, with your elbow bent to 90 degrees and positioned directly under your shoulder. Align your head with your spine and keep your hips and right knee in contact with the exercise mat. Exhale, gently contract your abdominal / core muscles to stiffen your spine and lift your hips and right leg off the mat. Your head should be aligned with your spine and your right elbow should remain positioned directly under your shoulder. Inhale and gently return yourself to your starting position. Switch sides and repeat.")


lift_a.exercise_instances.create(exercise_id: 2, weight_lbs: 50, sets: 4, reps:12, exercise_rating: 5)
lift_a.exercise_instances.create(exercise_id: 7, weight_lbs: 60, sets: 4, reps: 12, exercise_rating: 5)
lift_b.exercise_instances.create(exercise_id: 4, weight_lbs: 25, sets: 3, reps: 30, exercise_rating: 3)
lift_b.exercise_instances.create(exercise_id: 8, sets: 3, reps: 12, exercise_rating: 4)

run_a.exercise_instances.create(exercise_id: 4, weight_lbs: 25, sets: 3, reps: 20, exercise_rating: 4)
run_a.exercise_instances.create(exercise_id: 8, sets: 3, reps: 12, exercise_rating: 5)
run_b.exercise_instances.create(exercise_id: 8, sets: 8, reps: 12, exercise_rating: 5)
run_b.exercise_instances.create(exercise_id: 4, weight_lbs: 15, sets: 3, reps: 20, exercise_rating: 4)

bench_a.exercise_instances.create(exercise_id: 1, weight_lbs: 225, sets: 4, reps: 12, exercise_rating: 5)
bench_a.exercise_instances.create(exercise_id: 3, weight_lbs: 225, sets: 4, reps: 12, exercise_rating: 4)
bench_b.exercise_instances.create(exercise_id: 1, weight_lbs: 250, sets: 6, reps: 3, exercise_rating: 5)
bench_b.exercise_instances.create(exercise_id: 3, weight_lbs: 315, sets: 6, reps: 8, exercise_rating: 4)
