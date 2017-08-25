class JobTypesController < ApplicationController
  def index
    @job_types = JobType.all

    render("job_types/index.html.erb")
  end

  def show
    @job_type = JobType.find(params[:id])

    render("job_types/show.html.erb")
  end

  def new
    @job_type = JobType.new

    render("job_types/new.html.erb")
  end

  def create
    @job_type = JobType.new

    @job_type.name = params[:name]
    @job_type.description = params[:description]

    save_status = @job_type.save

    if save_status == true
      redirect_to("/job_types/#{@job_type.id}", :notice => "Job type created successfully.")
    else
      render("job_types/new.html.erb")
    end
  end

  def edit
    @job_type = JobType.find(params[:id])

    render("job_types/edit.html.erb")
  end

  def update
    @job_type = JobType.find(params[:id])

    @job_type.name = params[:name]

    save_status = @job_type.save

    if save_status == true
      redirect_to("/job_types/#{@job_type.id}", :notice => "Job type updated successfully.")
    else
      render("job_types/edit.html.erb")
    end
  end

  def destroy
    @job_type = JobType.find(params[:id])

    @job_type.destroy

    if URI(request.referer).path == "/job_types/#{@job_type.id}"
      redirect_to("/", :notice => "Job type deleted.")
    else
      redirect_to("/job_types", :notice => "Job type deleted.")
    end
  end
end
