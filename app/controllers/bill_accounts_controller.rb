class BillAccountsController < ApplicationController
  # GET /bill_accounts
  # GET /bill_accounts.json
  def index
    @bill_accounts = BillAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_accounts }
    end
  end

  # GET /bill_accounts/1
  # GET /bill_accounts/1.json
  def show
    @bill_account = BillAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_account }
    end
  end

  # GET /bill_accounts/new
  # GET /bill_accounts/new.json
  def new
    @bill_account = BillAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_account }
    end
  end

  # GET /bill_accounts/1/edit
  def edit
    @bill_account = BillAccount.find(params[:id])
  end

  # POST /bill_accounts
  # POST /bill_accounts.json
  def create
    @bill_account = BillAccount.new(params[:bill_account])

    respond_to do |format|
      if @bill_account.save
        format.html { redirect_to @bill_account, notice: 'Bill account was successfully created.' }
        format.json { render json: @bill_account, status: :created, location: @bill_account }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_accounts/1
  # PUT /bill_accounts/1.json
  def update
    @bill_account = BillAccount.find(params[:id])

    respond_to do |format|
      if @bill_account.update_attributes(params[:bill_account])
        format.html { redirect_to @bill_account, notice: 'Bill account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_accounts/1
  # DELETE /bill_accounts/1.json
  def destroy
    @bill_account = BillAccount.find(params[:id])
    @bill_account.destroy

    respond_to do |format|
      format.html { redirect_to bill_accounts_url }
      format.json { head :no_content }
    end
  end
end
