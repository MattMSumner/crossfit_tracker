class WodQuery < Wod::BaseQuery
  def today
    date(Time.now.at_beginning_of_day).first?
  end
end
