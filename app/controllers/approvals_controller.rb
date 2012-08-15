class ApprovalsController < ApplicationController
  before_filter :authenticate_admin

  def index
    @appreciations = Appreciation.approved(false)
  end

  def update
    @appreciation = Appreciation.find(params[:id])
    @appreciation.update_attribute(:approved, true)
    redirect_to @appreciation
  end
  
  def destroy
    @appreciation = Appreciation.find(params[:id])
    @appreciation.update_attribute(:approved, false)
    redirect_to @appreciation
  end
  
end
