class Workouts::New < BrowserAction
  action do
    wod = WodQuery.new.today

    if wod
      render wod: wod
    else
      redirect Wods::New
    end
  end
end
