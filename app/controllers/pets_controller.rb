class PetsController < ApplicationController

  before_action :find_pet, only: %i[show edit]

  def index
    @pets = current_user.pets
  end

  def show; end

  def edit; end

  

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end
end
