class RequestsController < ApplicationController
  def index
    if current_user.carer?
      @requests = Request.where(carer: current_user)
    else
      @requests = Request.where(pet: current_user.pets)
    end

    @upcoming_requests = @requests.where("end_date >= ?", Date.today).order(end_date: :desc)
    @past_requests = @requests.where("end_date < ?", Date.today).order(end_date: :desc)

    @user_requests = Request.where(user: current_user)
    @user_upcoming_requests = @user_requests.where("end_date >= ?", Date.today).order(end_date: :desc)
    @user_past_requests = @user_requests.where("end_date < ?", Date.today).order(end_date: :desc)

    @user = current_user

    @user_requests_sent = Request.joins(pet: :user).where(users: { id: current_user.id })
    @user_requests_sent_upcoming = @user_requests_sent.where("end_date >= ?", Date.today).order(end_date: :asc)
    @user_requests_sent_past = @user_requests_sent.where("end_date < ?", Date.today).order(end_date: :desc)
  end


  def new
    @carer = User.find(params[:carer_id])
    @request = Request.new
  end

  def create
    @carer = User.find(params[:carer_id])
    @request = Request.new(request_params)
    @request.carer = @carer
    if @request.save
      redirect_to requests_path, notice: 'Request sent successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      flash[:notice] = 'Request was successfully updated.'
      redirect_to requests_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to requests_path, notice: 'Request was successfully deleted.'
  end

  private

  def request_params
    params.require(:request).permit(:status, :start_date, :end_date, :carers_home, :pet_id, :price)
  end
end
