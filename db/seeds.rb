# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

workouts = Workout.create([{ name: 'Jumping Jacks', repetitions: 15 }, { name: 'Normal Push Ups',repetitions: 15  }, {name: 'Crunches', repetitions: 15 },
                          {name: 'Mountain Climbers', repetitions: 15 }, {name: 'WideGrip Push Ups', repetitions: 15 }, {name: 'Reverse Crunches', repetitions: 15 },
                          {name: "Hip Thrusters", repetitions: 15 }, {name: "CloseGrip Push Ups", repetitions: 15 }, {name: "JackKnife", repetitions: 15 },
                          {name: "Plank", repetitions: 15 }])
