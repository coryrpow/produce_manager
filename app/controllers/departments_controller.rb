class DepartmentsController < ApplicationController

  def index
    @departments = Department.all 
  end

  def new
  end

  def create
    department = Department.new({
      department_name: params[:department_name],
      location: params[:location],
      in_stock: params[:in_stock],
      holding_power: params[:holding_power]
    })
  
    department.save
    redirect_to "/departments"
  end

  def show
    @department = Department.find(params[:id])
  end
end