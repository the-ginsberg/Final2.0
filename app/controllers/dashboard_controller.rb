class DashboardController < ApplicationController
  def index
    @dashboards = Dashboard.all
  end

  def show
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



end
