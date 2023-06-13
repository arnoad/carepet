class PetsController < ApplicationController

  def index
    @pets = Pet.all
    @pets.current_user
  end
end
