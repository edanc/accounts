class Logs::LaborLineItemsController < ApplicationController
  def create
    log.labor_line_items.create(labor_params)
    redirect_to log_path(log)
  end

  def update

  end

  def destroy
    log.labor_line_items.find_by(id: params[:id]).destroy
    redirect_to log_path(log)
  end

  private

  def labor_params
    params.require(:labor_line_items).permit(:amount, :description)
  end

  def log
    Log.find(log_id)
  end

  def log_id
    params[:log_id]
  end

end
