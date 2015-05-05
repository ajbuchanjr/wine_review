module WineHelper
  def format_average_ratings(wine)
    average = wine.average_ratings
  if average
    number_with_precision(average, precision: 1) + ' rating'
  else
    'No ratings'
  end
  end

end
