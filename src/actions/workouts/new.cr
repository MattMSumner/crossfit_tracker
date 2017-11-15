class Workouts::New < BrowserAction
  action do
    wod = WodQuery.new.date(Time.now.at_beginning_of_day).first?

    if wod
      render wod: wod
    else
      redirect Wods::New
    end
  end
end
