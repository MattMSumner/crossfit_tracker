class WodForm < Wod::BaseForm
  allow description

  def prepare
    super
    date.value = Time.now.at_beginning_of_day
  end
end
