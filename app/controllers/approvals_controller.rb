class ApprovalsController < ApplicationController
  def index
    @appreciations = Appreciation.approved(false)
  end
  
end
