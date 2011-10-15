class GoalsController < ApplicationController

  def index
    @goals = Goal.all
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(params[:goal])
    @goal.saved = 0
    if @goal.save
      redirect_to :action => 'index'
    else
      render 'new'
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])

    if @goal.update_attributes(params[:goal])
      redirect_to :action => 'index'
    else
      render 'edit'
    end
  end
end
