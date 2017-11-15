class Home::Index < BrowserAction
  get "/" do
    wod = WodQuery.new.date(Time.now.at_beginning_of_day).first?

    if wod.is_a?(Wod)
      render Workouts::NewPage, wod: wod
    else
      redirect Wods::New
    end
  end
end
