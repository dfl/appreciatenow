class AppreciationsController < ApplicationController

  def index
    @appreciations = Appreciation.all #.order("random()")
  end
  
  def show
    @appreciation = Appreciation.find(params[:id])
  end
  
  def random
    @appreciation = Appreciation.random
    render :show
  end

  def new
    @appreciation = Appreciation.new    
  end
  
  def create
    @appreciation = Appreciation.new( params[:appreciation] )
    if @appreciation.save
      redirect_to @appreciation
    else
      render :new
    end
  end
  
end
