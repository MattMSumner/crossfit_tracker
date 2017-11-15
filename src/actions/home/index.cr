class Home::Index < BrowserAction
  get "/" do
    wod = WodQuery.new.today

    if wod
      redirect Workouts::New
    else
      redirect Wods::New
    end
  end
end
