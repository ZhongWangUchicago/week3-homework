# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.delete_all

place_list=
[{:title => "Willis Tower",
  :photo_url => "http://msnbcmedia.msn.com/i/MSNBC/Components/Photo/_new/100706-travel-chicagoskyline-hmed-1120a.jpg",
  :price => 20, 
  :description => "Tallest building in Chicago."},
 {:title => "Museum of Contemporary Art",
  :photo_url => "https://musicrowgirl.files.wordpress.com/2014/07/museum-of-contemporary-art.jpg",
  :price => 12, 
  :description => "One of the greatest gift shops anywhere."},
 {:title => "Museum of Science and Industry",
  :photo_url => "http://upload.wikimedia.org/wikipedia/commons/4/4e/Museum_of_Science_and_Industry.jpg",
  :price => 18,
  :description => "One of the premier science museums in America."},
 {:title => "Chicago Symphony Center", 
  :photo_url => "http://soundfusemag.com/wp-content/uploads/2012/12/Chi-Symphony_Center_aud-590x421.jpg", 
  :price => 90, 
  :description => "Home to the Chicago Symphony Orchestra."},
 {:title => "Chicago History Museum",
  :photo_url => "http://i1.stay.com/images/venue/903/5/ca04ae41/chicago-history-museum.png", 
  :price => 14, 
  :description => "All about the city’s History."},
  ].each do |place_hash|
	 p = Place.new
	 p.title = place_hash[:title]
	 p.photo_url = place_hash[:photo_url]
	 p.price = place_hash[:price]
	 p.description = place_hash[:description]
	 p.save
end

