class KMeans
  def initialize(k, training_data)
    @categories = (0..k-1).map{|category| [category, training_data[category]]}
  end

  def category(item)
    @categories.map{|category, average| [category, distance_between(item, average)]}
        .inject{|closest, distance| closest.last < distance.last ? closest : distance}
        .first
  end

  def distance_between(point_a, point_b)
    squares_of_distance = point_a.zip(point_b).map{|a, b| (a-b)**2 }
    return Math.sqrt(squares_of_distance.sum)
  end

end