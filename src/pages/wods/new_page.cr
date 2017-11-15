class Wods::NewPage < MainPage
  needs wod_form : WodForm

  render do
    render_wod_form(@wod_form)
  end

  private def render_wod_form(f)
    form_for Wods::Create do
      label_for f.description
      textarea f.description
      errors_for f.description

      submit "Save Workout of the Day"
    end
  end
end
