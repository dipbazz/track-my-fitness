# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Exercise.create([
  {
    name: 'Push up',
    unit: 'reps',
    icon: 'push-up',
    target: 50
  },
  {
    name: 'Pull up',
    unit: 'reps',
    icon: 'pull-up',
    target: 30
  },
  {
    name: 'Jumping rope',
    unit: 'reps',
    icon: 'jumping',
    target: 100
  },
  {
    name: 'Running',
    unit: 'Km',
    icon: 'runner',
    target: 5
  },
  {
    name: 'Sit up',
    unit: 'reps',
    icon: 'sit-up',
    target: 50
  },
  {
    name: 'Squat',
    unit: 'reps',
    icon: 'squat',
    target: 50
  },
])
