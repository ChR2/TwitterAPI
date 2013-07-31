require_relative 'app'

john = Student.where('first_name = ?', 'John')

cohort = Cohort.find(1)
cohort[:name] = 'Best Cohort Ever'
cohort.save


# This re-queries the database, so we're checking that we actually
# saved the data as intended
puts Cohort.find(1)[:name] == 'Best Cohort Ever'
puts john.first[:first_name] == 'John'
