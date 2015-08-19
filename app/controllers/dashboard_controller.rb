class DashboardController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

  def index
    @dashboards = Dashboard.all
  end

  def show
    @newsfeed = Newsfeed.new
    @newsfeeds = Newsfeed.all

  end

  def new
    @dashboard = Dashboard.new
  end

  def edit
  end

  def create
  @dashboard = Dashboard.new(dashboard_params)
  @dashboard.set_user(current_user)

    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully created.' }
        format.json { render :show, status: :created, location: @dashboard }
      else
        format.html { render :new }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dashboard = Dashboard.find(params[:id])
    if @dashboard.present?
      @dashboard.destroy
    end
    redirect_to dashboard_index_path
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.

  def set_dashboard
    @dashboard = Dashboard.find(params[:id])
  end

  def dashboard_params
    params.require(:dashboard).permit(:name, :user_id, :dashboard_id)
  end



end
