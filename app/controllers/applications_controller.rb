class ApplicationsController < ApplicationController
  def index
    @applications = Application.all

    render("applications/index.html.erb")
  end

  def show
    @application = Application.find(params[:id])

    render("applications/show.html.erb")
  end

  def new
    @application = Application.new

    render("applications/new.html.erb")
  end

  def create
    @application = Application.new

    @application.match_id = params[:match_id]

    save_status = @application.save

    if save_status == true
      redirect_to("/applications/#{@application.id}", :notice => "Application created successfully.")
    else
      render("applications/new.html.erb")
    end
  end

  def edit
    @application = Application.find(params[:id])

    render("applications/edit.html.erb")
  end

  def update
    @application = Application.find(params[:id])

    @application.match_id = params[:match_id]

    save_status = @application.save

    if save_status == true
      redirect_to("/applications/#{@application.id}", :notice => "Application updated successfully.")
    else
      render("applications/edit.html.erb")
    end
  end

  def destroy
    @application = Application.find(params[:id])

    @application.destroy

    if URI(request.referer).path == "/applications/#{@application.id}"
      redirect_to("/", :notice => "Application deleted.")
    else
      redirect_to(:back, :notice => "Application deleted.")
    end
  end
end
