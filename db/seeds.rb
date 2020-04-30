
require 'faker'

Location.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stall.destroy_all

10.times do

	# seed for locations
	Location.create!(
		city_name: Faker::Address.city
		)
	# seed for dogsitters
  Dogsitter.create!(
  	dogsitter_name: Faker::Name.first_name, 
  	location_id: Location.all.sample.id
  	)

  # seed for dogs
  Dog.create!(
  	dog_name: Faker::Name.first_name, 
  	location_id: Location.all.sample.id
  	)

  # seed for stalls
  Stall.create!(
  	dog_id: Dog.all.sample.id, 
  	dogsitter_id: Dogsitter.all.sample.id, 
  	location_id: Location.all.sample.id
  	) 
end
