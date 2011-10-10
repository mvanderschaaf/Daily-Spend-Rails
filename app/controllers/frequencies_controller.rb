class FrequenciesController < ApplicationController
  
  def index
    @Frequencies = Frequency.all
  end
  
  def new
    @frequency = Frequency.new
  end

  def create
    @freq = Frequency.new(params[:frequency])
    if @freq.save
      redirect_to :action => 'index'
    else
      render 'new'
    end
  end
end
