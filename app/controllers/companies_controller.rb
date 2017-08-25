class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    # @company = Company.find(params[:id])

    render("companies/index.html.erb")
  end

  def show
    @company = Company.find(params[:id])

    render("companies/show.html.erb")
  end

  def new
    @company = Company.new

    render("companies/new.html.erb")
  end

  def create
    @company = Company.new

    @company.name = params[:name]
    @company.logo = params[:logo]
    @company.hq_address = params[:hq_address]
    @company.industry_id = params[:industry_id]

    save_status = @company.save

    if save_status == true
      redirect_to("/companies/#{@company.id}", :notice => "Company created successfully.")
    else
      render("companies/new.html.erb")
    end
  end

  def edit
    @company = Company.find(params[:id])

    render("companies/edit.html.erb")
  end

  def update
    @company = Company.find(params[:id])

    @company.name = params[:name]
    @company.logo = params[:logo]
    @company.hq_address = params[:hq_address]
    @company.industry_id = params[:industry_id]

    save_status = @company.save

    if save_status == true
      redirect_to("/companies/#{@company.id}", :notice => "Company updated successfully.")
    else
      render("companies/edit.html.erb")
    end
  end

  def destroy
    @company = Company.find(params[:id])

    @company.destroy

    if URI(request.referer).path == "/companies/#{@company.id}"
      redirect_to("/", :notice => "Company deleted.")
    else
      redirect_to("/companies", :notice => "Company deleted.")
    end
  end
end
