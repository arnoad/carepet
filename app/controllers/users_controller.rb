class UsersController < Devise::SessionsController

  def index
    @carers = User.all.where(carer?: true)
  end
end
