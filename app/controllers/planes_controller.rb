class PlanesController < ApplicationController

def index
	#render text: "hi there"
	@planes = Plane.all
end

def new
	@plane = Plane.new
end

def show
	@plane = Plane.find(params[:id])

end

def create
  plane = params[:planes].permit(:name, :kind, :description)
  Plane.create plane
  redirect_to '/planes'
end

end