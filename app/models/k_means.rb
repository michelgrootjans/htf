class KMeans
  def initialize(male_attributes, female_attributes, other_attributes, training_data)
    @training_data = training_data

    @attributes = {
        male: male_attributes,
        female: female_attributes,
        other: other_attributes
    }
  end

  def evaluate(data)
    {
        male: matches(@attributes[:male], data),
        female: matches(@attributes[:female], data),
        other: matches(@attributes[:other], data)
    }
  end

  def matches(matching_attributes, data)
    data.select { |item| item[matching_attributes.first] >= 5 }
  end

  def self.distance(a, b)
    Math.sqrt( (a[0]-b[0])**2  + (a[1]-b[1])**2  + (a[2]-b[2])**2  )
  end

  def gender(item)

  end
end