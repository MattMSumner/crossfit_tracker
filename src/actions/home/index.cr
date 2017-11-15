class Home::Index < BrowserAction
  get "/" do
    if todays_workout
      render Workouts::NewPage, wod: todays_workout
    else
      redirect Wods::New
    end
  end

  private def todays_workout
    WodQuery.new.date(Time.now.at_beginning_of_day).first
  end
end
