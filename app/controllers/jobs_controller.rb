class JobsController < ApplicationController
  def index
    @jobs = Job.all

    render("jobs/index.html.erb")
  end

  def show
    @job = Job.find(params[:id])

    render("jobs/show.html.erb")
  end

  def new
    @job = Job.new

    render("jobs/new.html.erb")
  end

  def create
    @job = Job.new

    @job.title = params[:title]
    @job.company_id = params[:company_id]
    @job.location = params[:location]
    @job.job_type_id = params[:job_type_id]

    save_status = @job.save

    if save_status == true
      redirect_to("/jobs/#{@job.id}", :notice => "Job created successfully.")
    else
      render("jobs/new.html.erb")
    end
  end

  def edit
    @job = Job.find(params[:id])

    render("jobs/edit.html.erb")
  end

  def update
    @job = Job.find(params[:id])

    @job.title = params[:title]
    @job.company_id = params[:company_id]
    @job.location = params[:location]
    @job.job_type_id = params[:job_type_id]

    save_status = @job.save

    if save_status == true
      redirect_to("/jobs/#{@job.id}", :notice => "Job updated successfully.")
    else
      render("jobs/edit.html.erb")
    end
  end

  def destroy
    @job = Job.find(params[:id])

    @job.destroy

    if URI(request.referer).path == "/jobs/#{@job.id}"
      redirect_to("/", :notice => "Job deleted.")
    else
      redirect_to(:back, :notice => "Job deleted.")
    end
  end
end
