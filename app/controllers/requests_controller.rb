class RequestsController < ApplicationController
























  def show; end

  def edit; end

  def update
    @request = Request.find(params[:id])
    if @request.update (strong_params)
      flash[:notice] = 'Booking was successfully updated.'
      redirect_to bookings_path
    else
      render :edit, status: :unprocessable_entity
    end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to 

end
