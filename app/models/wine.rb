class Wine < ActiveRecord::Base
VARIETALS = ["Blend", "Brunello", "Champagne", "Chardonnay", "Chianti", "Gamay", "Cabernet Sauvignon", "Malbec", "Merlot", "Montepulciano", "Moscato", "Pinot Grigio", "Pinot Noir", "Sirah", "Zinfandel"]
validates :name, :year, :country, :varietal, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 1700 }
validates :varietal,
    inclusion: { in: VARIETALS }
end
