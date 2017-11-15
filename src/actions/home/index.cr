class Home::Index < BrowserAction
  get "/" do
    wod = WodQuery.new.date(Time.now.at_beginning_of_day).first?

    if wod
      redirect Workouts::New
    else
      redirect Wods::New
    end
  end
end
