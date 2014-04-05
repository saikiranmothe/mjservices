class BillPaysController < ApplicationController
  # GET /bill_pays
  # GET /bill_pays.json
  def index
    @bill_pays = BillPay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_pays }
    end
  end

  # GET /bill_pays/1
  # GET /bill_pays/1.json
  def show
    @bill_pay = BillPay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_pay }
    end
  end

  # GET /bill_pays/new
  # GET /bill_pays/new.json
  def new
    @bill_pay = BillPay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_pay }
    end
  end

  # GET /bill_pays/1/edit
  def edit
    @bill_pay = BillPay.find(params[:id])
  end

  # POST /bill_pays
  # POST /bill_pays.json
  def create
    @bill_pay = BillPay.new(params[:bill_pay])

    respond_to do |format|
      if @bill_pay.save
        format.html { redirect_to @bill_pay, notice: 'Bill pay was successfully created.' }
        format.json { render json: @bill_pay, status: :created, location: @bill_pay }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_pays/1
  # PUT /bill_pays/1.json
  def update
    @bill_pay = BillPay.find(params[:id])

    respond_to do |format|
      if @bill_pay.update_attributes(params[:bill_pay])
        format.html { redirect_to @bill_pay, notice: 'Bill pay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_pays/1
  # DELETE /bill_pays/1.json
  def destroy
    @bill_pay = BillPay.find(params[:id])
    @bill_pay.destroy

    respond_to do |format|
      format.html { redirect_to bill_pays_url }
      format.json { head :no_content }
    end
  end
end
