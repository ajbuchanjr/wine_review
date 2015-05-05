class Wine < ActiveRecord::Base
has_many :log_entries, dependent: :destroy
VARIETALS = ["Blend", "Brunello", "Champagne", "Chardonnay", "Chianti", "Gamay", "Cabernet Sauvignon", "Malbec", "Merlot", "Montepulciano", "Moscato", "Pinot Grigio", "Pinot Noir", "Sirah", "Zinfandel"]
validates :name, :year, :country, :varietal, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 1700 }
validates :varietal,
    inclusion: { in: VARIETALS }
def average_ratings
   if log_entries.loaded?
    log_entries.map(&:rating).compact.average
  else
    log_entries.average(:rating)
  end
end

end
