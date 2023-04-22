class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      flash[:notice] = 'Supplier created successfully.'
      redirect_to @supplier
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @supplier.update(supplier_params)
      flash[:notice] = 'Supplier updated successfully.'
      redirect_to @supplier
    else
      render 'edit'
    end
  end

  def destroy
    @supplier.destroy
    redirect_to suppliers_path
  end

  private

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name, :nit, :contact_name, :contact_phone, :bank_id,
      :account_number)
  end
end
