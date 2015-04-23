class PlacesController < ApplicationController
	
	def index
		@places = Place.all
	end

	def show
		@place = Place.find_by(:id => params["id"])
		@reviews = Review.where(:place_id => @place.id).order("id DESC")
	
	end

	def delete
		place = Place.find_by(:id => params["id"])
		place.delete
		redirect_to "/"
	end

	def new
	end

	def create
		place = Place.new
		
		place.title = params["title"]
		place.photo_url = params["photo_url"]
		place.price = params["price"]
		place.description = params["description"]

		place.save
		redirect_to "/"
	end

	def edit
		@place = Place.find_by(:id => params["id"])
	end

	def update
		place = Place.find_by(:id => params["id"])

		place.title = params["title"]
		place.photo_url = params["photo_url"]
		place.price = (params["price"].to_f * 100).to_i
		place.description = params["description"]
		
		place.save
		redirect_to "/places/#{place.id}"
	end

	def review
		place = Place.find_by(:id => params["id"])

		review = Review.new
		review.title = params["title"]
		review.rating = params["rating"].to_i
		review.description = params["description"]
		review.place_id = place.id
		review.save

		redirect_to "/places/#{place.id}"
	end


end
