class BillServicesController < ApplicationController
  # GET /bill_services
  # GET /bill_services.json
  def index
    @bill_services = BillService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_services }
    end
  end

  # GET /bill_services/1
  # GET /bill_services/1.json
  def show
    @bill_service = BillService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_service }
    end
  end

  # GET /bill_services/new
  # GET /bill_services/new.json
  def new
    @bill_service = BillService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_service }
    end
  end

  # GET /bill_services/1/edit
  def edit
    @bill_service = BillService.find(params[:id])
  end

  # POST /bill_services
  # POST /bill_services.json
  def create
    @bill_service = BillService.new(params[:bill_service])

    respond_to do |format|
      if @bill_service.save
        format.html { redirect_to @bill_service, notice: 'Bill service was successfully created.' }
        format.json { render json: @bill_service, status: :created, location: @bill_service }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_services/1
  # PUT /bill_services/1.json
  def update
    @bill_service = BillService.find(params[:id])

    respond_to do |format|
      if @bill_service.update_attributes(params[:bill_service])
        format.html { redirect_to @bill_service, notice: 'Bill service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_services/1
  # DELETE /bill_services/1.json
  def destroy
    @bill_service = BillService.find(params[:id])
    @bill_service.destroy

    respond_to do |format|
      format.html { redirect_to bill_services_url }
      format.json { head :no_content }
    end
  end
end
