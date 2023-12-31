class CarersController < Devise::SessionsController

  before_action :find_carer, only: %i[show]

  def index
    @carers = User.all.where(carer: true)
    @reviews = Review.all.where(carer_id: @carer)

    # Search
    if params[:query].present?
      params[:show_list] = "true"
      @carers = User.near(params[:query], 200).where(carer: true)
    end

    # Map
    @markers = @carers.geocoded.map do |carer|
      {
        lat: carer.latitude,
        lng: carer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { carer: carer }),
        marker_html: render_to_string(partial: "marker")
      }
    end


    # VIEW
    respond_to do |format|
      format.html
      format.js   # Render the corresponding JavaScript response
    end

  end

  def show
    @reviews = Review.all.where(carer_id: @carer)
  end

  private

  def find_carer
    @carer = User.where(carer: true).find(params[:id])
  end
end
