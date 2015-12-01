class Logs::TireLineItemsController < ApplicationController
  def create
    tli = log.tire_line_items.build(tire_params)
    tli.build_tire_size(tire_size_param)
    tli.save
    redirect_to log_path(log)
  end

  def destroy
    log.tire_line_items.where(id: params[:tli_id]).destroy_all
    redirect_to log_path(log)
  end
  
  private

  def log
    @log ||= Log.find(params[:log_id])
  end

  def log_param
    params.permit(:log_id)
  end
  
  def tire_size_param
    params[:log][:tire_line_item].require(:tire_size).permit(:size)
  end

  def tire_params
    params.require(:log).require(:tire_line_item).permit(:units, :unit_amount, :tire_type, :total_amount)
  end

  def tire_size_param
    params.require(:log).require(:tire_line_item).require(:tire_size).permit(:size)
  end
end
