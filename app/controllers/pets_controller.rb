class PetsController < ApplicationController

  before_action :find_pet, only: %i[show edit update destroy]

  def index
    @pets = current_user.pets
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, flash: { success: 'Details was successfully updated.' }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pet.destroy
    redirect_to profile_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :age, :pet_type, :breed, :medical_cond, :special_needs, :photo)
  end
end
