class Wods::Create < BrowserAction
  action do
    WodForm.save(params) do |form, wod|
      if wod
        redirect to: Workouts::New
      else
        render NewPage, wod_form: form
      end
    end
  end
end
