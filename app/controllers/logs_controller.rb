class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy, :update_for_summary]
  before_filter :authorize

  def index
    @logs = Log.all
  end

  def show
    @log = Log.find_by_id(params[:id])
  end

  def new
    @log = Log.new
  end

  def edit
  end

  def create
    @log = Log.where("created_at >= ?", Time.zone.now.beginning_of_day).first_or_create

    respond_to do |format|
      if @log.save
        format.html { redirect_to @log, notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: 'Log was successfully updated.' }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: 'Log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def today
    log = Log.where("created_at >= ?", Time.zone.now.beginning_of_day).first_or_create
    redirect_to log_path(log)
  end

  def update_for_summary
    @log.update(summarize: true)
    redirect_to log_path(@log)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_log
    @log = Log.find(log_id)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def log_params
    params[:log]
  end

  def log_id
    params[:id] || params[:log_id]
  end
end
