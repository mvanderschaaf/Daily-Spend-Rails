class BillsController < ApplicationController

  def index
    @bills = Bill.find(:all, :order => 'amount desc')
  end

  def paid
    @bill = Bill.find(params[:id])
    @bill.last_paid_date = Date.today
    @bill.save
    redirect_to :action => 'index'
  end

  def new
    @bill = Bill.new
    @freqs = Frequency.all
  end

  def edit
    @bill = Bill.find(params[:id])
    @freqs = Frequency.all
  end

  def create
    @bill = Bill.new(params[:bill])
    @bill.last_paid_date = Date.today
    if @bill.save
      redirect_to :action => 'index'
    else
      @freqs = Frequency.all
      render 'new'
    end
  end

  def update
    @bill = Bill.find(params[:id])

    if @bill.update_attributes(params[:bill])
      redirect_to :action => 'index'
    else
      @freqs = Frequency.all
      render 'edit'
    end
  end

  def destroy
    Bill.find(params[:id]).destroy
    redirect_to bills_path
  end
end
