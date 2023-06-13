class CarersController < Devise::SessionsController

  before_action :find_carer, only: %i[show]

  def index
    @carers = User.all.where(carer?: true)
  end

  def show; end

  private

  def find_carer
    @carer = User.where(carer?: true).find(params[:id])
  end
end
