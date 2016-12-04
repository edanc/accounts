class Logs::TireLineItemsController < ApplicationController
  def create
    if line_item.save
      flash[:notice] = "Action performed successfully"
    else
      flash[:error] = "Could not create item"
    end
    redirect_to log_path(log)
  end

  def destroy
    log.tire_line_items.find_by(id: params[:id]).destroy
    redirect_to log_path(log)
  end

  private

  def line_item
    Logs::CreateItems.execute(log: log, item_params: tire_params)
  end

  def log
    @log ||= Log.find(params[:log_id])
  end

  def tire_params
    params.require(:log).
      require(:tire_line_item).
      permit(
        :size,
        :tire_type,
        :total_amount,
        :unit_amount,
        :units
    )
  end
end
