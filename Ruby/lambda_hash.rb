# Creating a Lambda
# Second verse: same as the first! Let's go ahead and make ourselves a lambda.

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!


first_half = lambda { |k,v| v < 'M' }







crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!


first_half = lambda { |k,v| v < 'M' }



a_to_m = crew.select(&first_half)