class Workouts::NewPage < MainPage
  needs wod : Wod

  render do
    h1 "Workout of the day"
    h2 @wod.description
  end
end
