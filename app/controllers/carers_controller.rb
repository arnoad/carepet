class CarersController < Devise::SessionsController

  before_action :find_carer, only: %i[show]

  def index
    @carers = User.all.where(carer?: true)

    @markers = @carers.geocoded.map do |carer|
      {
        lat: carer.latitude,
        lng: carer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {carer: carer}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show; end

  private

  def find_carer
    @carer = User.where(carer?: true).find(params[:id])
  end
end
