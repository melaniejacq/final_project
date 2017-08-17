class IndustriesController < ApplicationController
  def index
    @industries = Industry.all

    render("industries/index.html.erb")
  end

  def show
    @industry = Industry.find(params[:id])

    render("industries/show.html.erb")
  end

  def new
    @industry = Industry.new

    render("industries/new.html.erb")
  end

  def create
    @industry = Industry.new

    @industry.name = params[:name]

    save_status = @industry.save

    if save_status == true
      redirect_to("/industries/#{@industry.id}", :notice => "Industry created successfully.")
    else
      render("industries/new.html.erb")
    end
  end

  def edit
    @industry = Industry.find(params[:id])

    render("industries/edit.html.erb")
  end

  def update
    @industry = Industry.find(params[:id])

    @industry.name = params[:name]

    save_status = @industry.save

    if save_status == true
      redirect_to("/industries/#{@industry.id}", :notice => "Industry updated successfully.")
    else
      render("industries/edit.html.erb")
    end
  end

  def destroy
    @industry = Industry.find(params[:id])

    @industry.destroy

    if URI(request.referer).path == "/industries/#{@industry.id}"
      redirect_to("/", :notice => "Industry deleted.")
    else
      redirect_to(:back, :notice => "Industry deleted.")
    end
  end
end
