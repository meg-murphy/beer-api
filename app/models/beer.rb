class Beer < ApplicationRecord
  has_many :beer_availability_cities

  def name_and_style
    return "#{name}, an #{style}"
  end
end
