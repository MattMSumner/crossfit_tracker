class Wods::New < BrowserAction
  action do
    render wod_form: WodForm.new
  end
end
