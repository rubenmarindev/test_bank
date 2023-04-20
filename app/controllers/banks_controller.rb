class BanksController < ApplicationController
  before_action :set_bank, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @banks = Bank.all
  end

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.new(bank_params)
    if @bank.save
      flash[:notice] = 'Bank created successfully.'
      redirect_to @bank
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @bank.update(bank_params)
      flash[:notice] = 'Bank updated successfully.'
      redirect_to @bank
    else
      render 'edit'
    end
  end

  def destroy
    @bank.destroy
    redirect_to banks_path
  end

  private

  def set_bank
    @bank = Bank.find(params[:id])
  end

  def bank_params
    params.require(:bank).permit(:name, :code, :nit)
  end
end
