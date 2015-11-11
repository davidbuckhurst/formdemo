class BusinessPrioritiesController < ApplicationController
  before_action :set_business_priority, only: [:show, :edit, :update, :destroy]

  # GET /business_priorities
  # GET /business_priorities.json
  def index
    @business_priorities = BusinessPriority.all
  end

  # GET /business_priorities/1
  # GET /business_priorities/1.json
  def show
  end

  # GET /business_priorities/new
  def new
    @business_priority = BusinessPriority.new
  end

  # GET /business_priorities/1/edit
  def edit
  end

  # POST /business_priorities
  # POST /business_priorities.json
  def create
    @business_priority = BusinessPriority.new(business_priority_params)

    respond_to do |format|
      if @business_priority.save
        format.html { redirect_to @business_priority, notice: 'Business priority was successfully created.' }
        format.json { render :show, status: :created, location: @business_priority }
      else
        format.html { render :new }
        format.json { render json: @business_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_priorities/1
  # PATCH/PUT /business_priorities/1.json
  def update
    respond_to do |format|
      if @business_priority.update(business_priority_params)
        format.html { redirect_to @business_priority, notice: 'Business priority was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_priority }
      else
        format.html { render :edit }
        format.json { render json: @business_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_priorities/1
  # DELETE /business_priorities/1.json
  def destroy
    @business_priority.destroy
    respond_to do |format|
      format.html { redirect_to business_priorities_url, notice: 'Business priority was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_priority
      @business_priority = BusinessPriority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_priority_params
      params.require(:business_priority).permit(:rule_name, { device_ids: [] })
    end
end
