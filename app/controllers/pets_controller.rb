class PetsController < ApplicationController

  before_action :find_pet, only: %i[show edit update]

  def index
    @pets = current_user.pets
  end

  def show; end

  def edit; end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, flash: { success: 'Details was successfully updated.' }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :age, :pet_type, :breed, :medical_cond, :special_needs)
  end
end
