json.name beer.name
json.style beer.style
json.hop beer.hop
json.yeast beer.yeast
json.malts beer.malts
json.ibu beer.ibu
json.alcohol beer.alcohol

json.cities beer.beer_availability_cities.each do |beer_availability_city|
  json.city beer_availability_city.city
  json.state beer_availability_city.state
end
